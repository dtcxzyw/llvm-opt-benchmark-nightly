Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.edz = zext i1 %i.edy to i8
  %i.eea = add i8 %i.edv, %i.edz                  ; 2 uses
  store i8 %i.eea, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.eeb = getelementptr inbounds [4 x i8], ptr %i.ebc, i64 %i.ebs
  %i.eec = load float, ptr %i.eeb, align 4, !tbaa !12
  %i.eed = fcmp reassoc nsz arcp contract afn ole float %i.eec, %i.ebr
  %i.eee = zext i1 %i.eed to i8
  %i.eef = add i8 %i.eea, %i.eee
  %i.eeg = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %indvars.iv1697.i
  %i.eeh = load float, ptr %i.eeg, align 4, !tbaa !12
  %i.eei = fcmp reassoc nsz arcp contract afn ole float %i.eeh, %i.ebr
  %i.eej = zext i1 %i.eei to i8
  %i.eek = add i8 %i.eef, %i.eej
  %i.eel = getelementptr inbounds nuw [4 x i8], ptr %i.ebc, i64 %i.ecd
  %i.eem = load float, ptr %i.eel, align 4, !tbaa !12
  %i.een = fcmp reassoc nsz arcp contract afn ole float %i.eem, %i.ebr
  %i.eeo = zext i1 %i.een to i8
  %i.eep = add i8 %i.eek, %i.eeo                  ; 2 uses
  store i8 %i.eep, ptr %gep1415.1.i, align 1, !tbaa !133
  %i.eeq = getelementptr inbounds [4 x i8], ptr %i.ebd, i64 %i.ebs
  %i.eer = load float, ptr %i.eeq, align 4, !tbaa !12
  %i.ees = fcmp reassoc nsz arcp contract afn ole float %i.eer, %i.ebr
  %i.eet = zext i1 %i.ees to i8
  %i.eeu = add i8 %i.eep, %i.eet
  %i.eev = getelementptr inbounds nuw [4 x i8], ptr %i.ebd, i64 %indvars.iv1697.i
  %i.eew = load float, ptr %i.eev, align 4, !tbaa !12
  %i.eex = fcmp reassoc nsz arcp contract afn ole float %i.eew, %i.ebr
  %i.eey = zext i1 %i.eex to i8
  %i.eez = add i8 %i.eeu, %i.eey
  %i.efa = getelementptr inbounds nuw [4 x i8], ptr %i.ebd, i64 %i.ecd
  %i.efb = load float, ptr %i.efa, align 4, !tbaa !12
  %i.efc = fcmp reassoc nsz arcp contract afn ole float %i.efb, %i.ebr
  %i.efd = zext i1 %i.efc to i8
  %i.efe = add i8 %i.eez, %i.efd
  store i8 %i.efe, ptr %gep1415.1.i, align 1, !tbaa !133
  %gep1415.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1414.i, i64 29768 ; 6 uses
  %.promoted1407.2.i = load i8, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.eff = getelementptr inbounds [4 x i8], ptr %i.ebe, i64 %i.ebs
  %i.efg = load float, ptr %i.eff, align 4, !tbaa !12
  %i.efh = fcmp reassoc nsz arcp contract afn ole float %i.efg, %i.ebr
  %i.efi = zext i1 %i.efh to i8
  %i.efj = add i8 %.promoted1407.2.i, %i.efi      ; 2 uses
  store i8 %i.efj, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.efk = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %indvars.iv1697.i
  %i.efl = load float, ptr %i.efk, align 4, !tbaa !12
  %i.efm = fcmp reassoc nsz arcp contract afn ole float %i.efl, %i.ebr
  %i.efn = zext i1 %i.efm to i8
  %i.efo = add i8 %i.efj, %i.efn                  ; 2 uses
  store i8 %i.efo, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.efp = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %i.ecd
  %i.efq = load float, ptr %i.efp, align 4, !tbaa !12
  %i.efr = fcmp reassoc nsz arcp contract afn ole float %i.efq, %i.ebr
  %i.efs = zext i1 %i.efr to i8
  %i.eft = add i8 %i.efo, %i.efs                  ; 2 uses
  store i8 %i.eft, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.efu = getelementptr inbounds [4 x i8], ptr %i.ebf, i64 %i.ebs
  %i.efv = load float, ptr %i.efu, align 4, !tbaa !12
  %i.efw = fcmp reassoc nsz arcp contract afn ole float %i.efv, %i.ebr
  %i.efx = zext i1 %i.efw to i8
  %i.efy = add i8 %i.eft, %i.efx
  %i.efz = getelementptr inbounds nuw [4 x i8], ptr %i.ebf, i64 %indvars.iv1697.i
  %i.ega = load float, ptr %i.efz, align 4, !tbaa !12
  %i.egb = fcmp reassoc nsz arcp contract afn ole float %i.ega, %i.ebr
  %i.egc = zext i1 %i.egb to i8
  %i.egd = add i8 %i.efy, %i.egc
  %i.ege = getelementptr inbounds nuw [4 x i8], ptr %i.ebf, i64 %i.ecd
  %i.egf = load float, ptr %i.ege, align 4, !tbaa !12
  %i.egg = fcmp reassoc nsz arcp contract afn ole float %i.egf, %i.ebr
  %i.egh = zext i1 %i.egg to i8
  %i.egi = add i8 %i.egd, %i.egh                  ; 2 uses
  store i8 %i.egi, ptr %gep1415.2.i, align 1, !tbaa !133
  %i.egj = getelementptr inbounds [4 x i8], ptr %i.ebg, i64 %i.ebs
  %i.egk = load float, ptr %i.egj, align 4, !tbaa !12
  %i.egl = fcmp reassoc nsz arcp contract afn ole float %i.egk, %i.ebr
  %i.egm = zext i1 %i.egl to i8
  %i.egn = add i8 %i.egi, %i.egm
  %i.ego = getelementptr inbounds nuw [4 x i8], ptr %i.ebg, i64 %indvars.iv1697.i
  %i.egp = load float, ptr %i.ego, align 4, !tbaa !12
  %i.egq = fcmp reassoc nsz arcp contract afn ole float %i.egp, %i.ebr
  %i.egr = zext i1 %i.egq to i8
  %i.egs = add i8 %i.egn, %i.egr
  %i.egt = getelementptr inbounds nuw [4 x i8], ptr %i.ebg, i64 %i.ecd
  %i.egu = load float, ptr %i.egt, align 4, !tbaa !12
  %i.egv = fcmp reassoc nsz arcp contract afn ole float %i.egu, %i.ebr
  %i.egw = zext i1 %i.egv to i8
  %i.egx = add i8 %i.egs, %i.egw
  store i8 %i.egx, ptr %gep1415.2.i, align 1, !tbaa !133
  %gep1415.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1414.i, i64 44652 ; 6 uses
  %.promoted1407.3.i = load i8, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.egy = getelementptr inbounds [4 x i8], ptr %i.ebh, i64 %i.ebs
  %i.egz = load float, ptr %i.egy, align 4, !tbaa !12
  %i.eha = fcmp reassoc nsz arcp contract afn ole float %i.egz, %i.ebr
  %i.ehb = zext i1 %i.eha to i8
  %i.ehc = add i8 %.promoted1407.3.i, %i.ehb      ; 2 uses
  store i8 %i.ehc, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.ehd = getelementptr inbounds nuw [4 x i8], ptr %i.ebh, i64 %indvars.iv1697.i
  %i.ehe = load float, ptr %i.ehd, align 4, !tbaa !12
  %i.ehf = fcmp reassoc nsz arcp contract afn ole float %i.ehe, %i.ebr
  %i.ehg = zext i1 %i.ehf to i8
  %i.ehh = add i8 %i.ehc, %i.ehg                  ; 2 uses
  store i8 %i.ehh, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.ehi = getelementptr inbounds nuw [4 x i8], ptr %i.ebh, i64 %i.ecd
  %i.ehj = load float, ptr %i.ehi, align 4, !tbaa !12
  %i.ehk = fcmp reassoc nsz arcp contract afn ole float %i.ehj, %i.ebr
  %i.ehl = zext i1 %i.ehk to i8
  %i.ehm = add i8 %i.ehh, %i.ehl                  ; 2 uses
  store i8 %i.ehm, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.ehn = getelementptr inbounds [4 x i8], ptr %i.ebi, i64 %i.ebs
  %i.eho = load float, ptr %i.ehn, align 4, !tbaa !12
  %i.ehp = fcmp reassoc nsz arcp contract afn ole float %i.eho, %i.ebr
  %i.ehq = zext i1 %i.ehp to i8
  %i.ehr = add i8 %i.ehm, %i.ehq
  %i.ehs = getelementptr inbounds nuw [4 x i8], ptr %i.ebi, i64 %indvars.iv1697.i
  %i.eht = load float, ptr %i.ehs, align 4, !tbaa !12
  %i.ehu = fcmp reassoc nsz arcp contract afn ole float %i.eht, %i.ebr
  %i.ehv = zext i1 %i.ehu to i8
  %i.ehw = add i8 %i.ehr, %i.ehv
  %i.ehx = getelementptr inbounds nuw [4 x i8], ptr %i.ebi, i64 %i.ecd
  %i.ehy = load float, ptr %i.ehx, align 4, !tbaa !12
  %i.ehz = fcmp reassoc nsz arcp contract afn ole float %i.ehy, %i.ebr
  %i.eia = zext i1 %i.ehz to i8
  %i.eib = add i8 %i.ehw, %i.eia                  ; 2 uses
  store i8 %i.eib, ptr %gep1415.3.i, align 1, !tbaa !133
  %i.eic = getelementptr inbounds [4 x i8], ptr %i.eax, i64 %i.ebs
  %i.eid = load float, ptr %i.eic, align 4, !tbaa !12
  %i.eie = fcmp reassoc nsz arcp contract afn ole float %i.eid, %i.ebr
  %i.eif = zext i1 %i.eie to i8
  %i.eig = add i8 %i.eib, %i.eif
  %i.eih = getelementptr inbounds nuw [4 x i8], ptr %i.eax, i64 %indvars.iv1697.i
  %i.eii = load float, ptr %i.eih, align 4, !tbaa !12
  %i.eij = fcmp reassoc nsz arcp contract afn ole float %i.eii, %i.ebr
  %i.eik = zext i1 %i.eij to i8
  %i.eil = add i8 %i.eig, %i.eik
  %i.eim = getelementptr inbounds nuw [4 x i8], ptr %i.eax, i64 %i.ecd
  %i.ein = load float, ptr %i.eim, align 4, !tbaa !12
  %i.eio = fcmp reassoc nsz arcp contract afn ole float %i.ein, %i.ebr
  %i.eip = zext i1 %i.eio to i8
  %i.eiq = add i8 %i.eil, %i.eip
  store i8 %i.eiq, ptr %gep1415.3.i, align 1, !tbaa !133
  %exitcond1227.not = icmp eq i64 %i.ecd, %umax1226
  br i1 %exitcond1227.not, label %._crit_edge1418.i, label %.preheader1248.i

._crit_edge1418.i:                                ; preds = %.preheader1248.i
  %exitcond1232.not = icmp eq i64 %i.eaw, %i.cei
  br i1 %exitcond1232.not, label %.preheader1266.i, label %.preheader1260.i

.preheader1265.split.i:                           ; preds = %._crit_edge1425.us.3.i, %.split1052.thread, %.preheader1266.i, %.split1052
  %i.eir = icmp sgt i32 %i.dqb, 12
  %or.cond729 = select i1 %i.cdx, i1 %i.eir, i1 false
  br i1 %or.cond729, label %.preheader1258.preheader.i, label %._crit_edge1503.split.i

.preheader1258.lr.ph.i.unr-lcssa:                 ; preds = %.lr.ph1427.split.3.i
  br i1 %lcmp.mod4757.not.a, label %.preheader1258.lr.ph.i, label %.lr.ph1427.split.3.i.epil.preheader

.lr.ph1427.split.3.i.epil.preheader:              ; preds = %.preheader1258.lr.ph.i.unr-lcssa, %.lr.ph1427.split.3.i.preheader
  %indvars.iv1703.3.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.3.i.preheader ], [ %indvars.iv.next1704.3.i.7, %.preheader1258.lr.ph.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4758)
  br label %.lr.ph1427.split.3.i.epil

.lr.ph1427.split.3.i.epil:                        ; preds = %.lr.ph1427.split.3.i.epil, %.lr.ph1427.split.3.i.epil.preheader
  %indvars.iv1703.3.i.epil = phi i64 [ %indvars.iv.next1704.3.i.epil, %.lr.ph1427.split.3.i.epil ], [ %indvars.iv1703.3.i.epil.init, %.lr.ph1427.split.3.i.epil.preheader ] ; 2 uses
  %epil.iter4756 = phi i64 [ %epil.iter4756.next, %.lr.ph1427.split.3.i.epil ], [ 0, %.lr.ph1427.split.3.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eis = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i.epil
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eis, i64 818628
  store i8 0, ptr %i.eit, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.3.i.epil = add nuw nsw i64 %indvars.iv1703.3.i.epil, 1
  %epil.iter4756.next = add i64 %epil.iter4756, 1 ; 2 uses
  %epil.iter4756.cmp.not = icmp eq i64 %epil.iter4756.next, %xtraiter4755
  br i1 %epil.iter4756.cmp.not, label %.preheader1258.lr.ph.i, label %.lr.ph1427.split.3.i.epil, !llvm.loop !216

.preheader1258.lr.ph.i:                           ; preds = %.lr.ph1427.split.3.i.epil, %.preheader1258.lr.ph.i.unr-lcssa
  %.old = icmp sgt i32 %i.dqb, 12
  br i1 %.old, label %.preheader1258.preheader.i, label %._crit_edge1503.split.i

.preheader1258.preheader.i:                       ; preds = %.preheader1265.split.i, %.preheader1258.lr.ph.i
  %i.eiu = add nsw i64 %umax1236, -7
  br label %.preheader1258.i

.preheader1237.lr.ph.us.i:                        ; preds = %.preheader1259.preheader.i, %._crit_edge1425.us.i
  %indvar4527 = phi i64 [ %indvar.next4528, %._crit_edge1425.us.i ], [ 0, %.preheader1259.preheader.i ] ; 2 uses
  %indvars.iv1712.i = phi i64 [ %i.eiz, %._crit_edge1425.us.i ], [ 13, %.preheader1259.preheader.i ] ; 3 uses
  %i.eiv = mul nuw nsw i64 %indvar4527, 122
  %i.eiw = getelementptr i8, ptr %i.bqw, i64 %i.eiv
  %scevgep4529 = getelementptr i8, ptr %i.eiw, i64 775562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.eix = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1712.i ; 2 uses
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.eix, i64 8
  store i8 0, ptr %i.eiy, align 2, !tbaa !133
  %i.eiz = add nuw nsw i64 %indvars.iv1712.i, 1   ; 3 uses
  %load_initial4530 = load i8, ptr %scevgep4529, align 2
  br label %.preheader1237.us.i

.preheader1237.us.i:                              ; preds = %.preheader1237.us.i, %.preheader1237.lr.ph.us.i
  %store_forwarded4531 = phi i8 [ %load_initial4530, %.preheader1237.lr.ph.us.i ], [ %i.ejo, %.preheader1237.us.i ]
  %indvars.iv1709.i = phi i64 [ 9, %.preheader1237.lr.ph.us.i ], [ %indvars.iv.next1710.i, %.preheader1237.us.i ] ; 4 uses
  %invariant.gep1420.us.i = getelementptr i8, ptr %i.caw, i64 %indvars.iv1709.i ; 2 uses
  %i.eja = getelementptr [122 x i8], ptr %invariant.gep1420.us.i, i64 %indvars.iv1712.i ; 4 uses
  %6 = getelementptr i8, ptr %i.eja, i64 -242
  %7 = load i8, ptr %6, align 1, !tbaa !133
  %i.ejb = getelementptr i8, ptr %i.eja, i64 -120
  %i.ejc = load i8, ptr %i.ejb, align 1, !tbaa !133
  %i.ejd = getelementptr inbounds nuw i8, ptr %i.eja, i64 2
  %i.eje = load i8, ptr %i.ejd, align 1, !tbaa !133
  %gep1421.us.3.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.i, i64 %i.eiz
  %i.ejf = getelementptr inbounds nuw i8, ptr %gep1421.us.3.i, i64 2
  %i.ejg = load i8, ptr %i.ejf, align 1, !tbaa !133
  %8 = getelementptr i8, ptr %i.eja, i64 246
  %9 = load i8, ptr %8, align 1, !tbaa !133
  %10 = insertelement <4 x i8> poison, i8 %i.ejc, i64 0
  %11 = insertelement <4 x i8> %10, i8 %7, i64 1
  %12 = insertelement <4 x i8> %11, i8 %i.eje, i64 2
  %13 = insertelement <4 x i8> %12, i8 %i.ejg, i64 3
  %14 = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %13)
  %op.rdx4572 = add i8 %14, %9                    ; 2 uses
  %i.ejh = getelementptr i8, ptr %i.eix, i64 %indvars.iv1709.i
  %i.eji = trunc nuw nsw i64 %indvars.iv1709.i to i32
  %i.ejj = urem i32 %i.eji, 5
  %i.ejk = zext nneg i32 %i.ejj to i64
  %i.ejl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ejk ; 2 uses
  %i.ejm = load i8, ptr %i.ejl, align 1, !tbaa !133
  %i.ejn = add i8 %store_forwarded4531, %op.rdx4572
  %i.ejo = sub i8 %i.ejn, %i.ejm                  ; 2 uses
  store i8 %i.ejo, ptr %i.ejh, align 1, !tbaa !133
  store i8 %op.rdx4572, ptr %i.ejl, align 1, !tbaa !133
  %indvars.iv.next1710.i = add nuw nsw i64 %indvars.iv1709.i, 1 ; 2 uses
  %exitcond1757.not.i = icmp eq i64 %indvars.iv.next1710.i, %smax1756.i
  br i1 %exitcond1757.not.i, label %._crit_edge1425.us.i, label %.preheader1237.us.i

._crit_edge1425.us.i:                             ; preds = %.preheader1237.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1760.not.i = icmp eq i64 %i.eiz, %smax1762.i
  %indvar.next4528 = add i64 %indvar4527, 1
  br i1 %exitcond1760.not.i, label %.preheader1237.lr.ph.us.1.i, label %.preheader1237.lr.ph.us.i

.lr.ph1427.split.1.i:                             ; preds = %.lr.ph1427.split.1.i.preheader, %.lr.ph1427.split.1.i
  %indvars.iv1703.1.i = phi i64 [ %indvars.iv.next1704.1.i.7, %.lr.ph1427.split.1.i ], [ 13, %.lr.ph1427.split.1.i.preheader ] ; 9 uses
  %niter4748 = phi i64 [ %niter4748.next.7, %.lr.ph1427.split.1.i ], [ 0, %.lr.ph1427.split.1.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejp = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejp, i64 788860
  store i8 0, ptr %i.ejq, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejr = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.ejs = getelementptr inbounds nuw i8, ptr %i.ejr, i64 788982
  store i8 0, ptr %i.ejs, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejt = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.eju = getelementptr inbounds nuw i8, ptr %i.ejt, i64 789104
  store i8 0, ptr %i.eju, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejv = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.ejw = getelementptr inbounds nuw i8, ptr %i.ejv, i64 789226
  store i8 0, ptr %i.ejw, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejx = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.ejy = getelementptr inbounds nuw i8, ptr %i.ejx, i64 789348
  store i8 0, ptr %i.ejy, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ejz = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejz, i64 789470
  store i8 0, ptr %i.eka, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekb = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ekb, i64 789592
  store i8 0, ptr %i.ekc, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekd = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i
  %i.eke = getelementptr inbounds nuw i8, ptr %i.ekd, i64 789714
  store i8 0, ptr %i.eke, align 4, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.1.i.7 = add nuw nsw i64 %indvars.iv1703.1.i, 8 ; 2 uses
  %niter4748.next.7 = add i64 %niter4748, 8       ; 2 uses
  %niter4748.ncmp.7 = icmp eq i64 %niter4748.next.7, %unroll_iter4747
  br i1 %niter4748.ncmp.7, label %.lr.ph1427.split.2.i.preheader.unr-lcssa, label %.lr.ph1427.split.1.i

.lr.ph1427.split.2.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.1.i
  br i1 %lcmp.mod4745.not, label %.lr.ph1427.split.2.i.preheader, label %.lr.ph1427.split.1.i.epil.preheader

.lr.ph1427.split.1.i.epil.preheader:              ; preds = %.lr.ph1427.split.2.i.preheader.unr-lcssa, %.lr.ph1427.split.1.i.preheader
  %indvars.iv1703.1.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.1.i.preheader ], [ %indvars.iv.next1704.1.i.7, %.lr.ph1427.split.2.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4746)
  br label %.lr.ph1427.split.1.i.epil

.lr.ph1427.split.1.i.epil:                        ; preds = %.lr.ph1427.split.1.i.epil, %.lr.ph1427.split.1.i.epil.preheader
  %indvars.iv1703.1.i.epil = phi i64 [ %indvars.iv.next1704.1.i.epil, %.lr.ph1427.split.1.i.epil ], [ %indvars.iv1703.1.i.epil.init, %.lr.ph1427.split.1.i.epil.preheader ] ; 2 uses
  %epil.iter4744 = phi i64 [ %epil.iter4744.next, %.lr.ph1427.split.1.i.epil ], [ 0, %.lr.ph1427.split.1.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ekf = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.1.i.epil
  %i.ekg = getelementptr inbounds nuw i8, ptr %i.ekf, i64 788860
  store i8 0, ptr %i.ekg, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.1.i.epil = add nuw nsw i64 %indvars.iv1703.1.i.epil, 1
  %epil.iter4744.next = add i64 %epil.iter4744, 1 ; 2 uses
  %epil.iter4744.cmp.not = icmp eq i64 %epil.iter4744.next, %xtraiter4743
  br i1 %epil.iter4744.cmp.not, label %.lr.ph1427.split.2.i.preheader, label %.lr.ph1427.split.1.i.epil, !llvm.loop !217

.lr.ph1427.split.2.i.preheader:                   ; preds = %.lr.ph1427.split.1.i.epil, %.lr.ph1427.split.2.i.preheader.unr-lcssa
  br i1 %i.cel, label %.lr.ph1427.split.2.i.epil.preheader, label %.lr.ph1427.split.2.i

.preheader1237.lr.ph.us.1.i:                      ; preds = %._crit_edge1425.us.i, %._crit_edge1425.us.1.i
  %indvar4532 = phi i64 [ %indvar.next4533, %._crit_edge1425.us.1.i ], [ 0, %._crit_edge1425.us.i ] ; 2 uses
  %indvars.iv1712.1.i = phi i64 [ %i.ekl, %._crit_edge1425.us.1.i ], [ 13, %._crit_edge1425.us.i ] ; 3 uses
  %i.ekh = mul nuw nsw i64 %indvar4532, 122
  %i.eki = getelementptr i8, ptr %i.bqw, i64 %i.ekh
  %scevgep4534 = getelementptr i8, ptr %i.eki, i64 790446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.ekj = getelementptr inbounds nuw [122 x i8], ptr %i.cbr, i64 %indvars.iv1712.1.i ; 2 uses
  %i.ekk = getelementptr inbounds nuw i8, ptr %i.ekj, i64 8
  store i8 0, ptr %i.ekk, align 2, !tbaa !133
  %i.ekl = add nuw nsw i64 %indvars.iv1712.1.i, 1 ; 3 uses
  %load_initial4535 = load i8, ptr %scevgep4534, align 2
  br label %.preheader1237.us.1.i

.preheader1237.us.1.i:                            ; preds = %.preheader1237.us.1.i, %.preheader1237.lr.ph.us.1.i
  %store_forwarded4536 = phi i8 [ %load_initial4535, %.preheader1237.lr.ph.us.1.i ], [ %i.ela, %.preheader1237.us.1.i ]
  %indvars.iv1709.1.i = phi i64 [ 9, %.preheader1237.lr.ph.us.1.i ], [ %indvars.iv.next1710.1.i, %.preheader1237.us.1.i ] ; 4 uses
  %invariant.gep1420.us.1.i = getelementptr i8, ptr %i.cbs, i64 %indvars.iv1709.1.i ; 2 uses
  %i.ekm = getelementptr [122 x i8], ptr %invariant.gep1420.us.1.i, i64 %indvars.iv1712.1.i ; 4 uses
  %15 = getelementptr i8, ptr %i.ekm, i64 -242
  %16 = load i8, ptr %15, align 1, !tbaa !133
  %i.ekn = getelementptr i8, ptr %i.ekm, i64 -120
  %i.eko = load i8, ptr %i.ekn, align 1, !tbaa !133
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.ekm, i64 2
  %i.ekq = load i8, ptr %i.ekp, align 1, !tbaa !133
  %gep1421.us.3.1.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.1.i, i64 %i.ekl
  %i.ekr = getelementptr inbounds nuw i8, ptr %gep1421.us.3.1.i, i64 2
  %i.eks = load i8, ptr %i.ekr, align 1, !tbaa !133
  %17 = getelementptr i8, ptr %i.ekm, i64 246
  %18 = load i8, ptr %17, align 1, !tbaa !133
  %19 = insertelement <4 x i8> poison, i8 %i.eko, i64 0
  %20 = insertelement <4 x i8> %19, i8 %16, i64 1
  %21 = insertelement <4 x i8> %20, i8 %i.ekq, i64 2
  %22 = insertelement <4 x i8> %21, i8 %i.eks, i64 3
  %23 = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %22)
  %op.rdx4571 = add i8 %23, %18                   ; 2 uses
  %i.ekt = getelementptr i8, ptr %i.ekj, i64 %indvars.iv1709.1.i
  %i.eku = trunc nuw nsw i64 %indvars.iv1709.1.i to i32
  %i.ekv = urem i32 %i.eku, 5
  %i.ekw = zext nneg i32 %i.ekv to i64
  %i.ekx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ekw ; 2 uses
  %i.eky = load i8, ptr %i.ekx, align 1, !tbaa !133
  %i.ekz = add i8 %store_forwarded4536, %op.rdx4571
  %i.ela = sub i8 %i.ekz, %i.eky                  ; 2 uses
  store i8 %i.ela, ptr %i.ekt, align 1, !tbaa !133
  store i8 %op.rdx4571, ptr %i.ekx, align 1, !tbaa !133
  %indvars.iv.next1710.1.i = add nuw nsw i64 %indvars.iv1709.1.i, 1 ; 2 uses
  %exitcond1748.not.i = icmp eq i64 %indvars.iv.next1710.1.i, %smax1756.i
  br i1 %exitcond1748.not.i, label %._crit_edge1425.us.1.i, label %.preheader1237.us.1.i

._crit_edge1425.us.1.i:                           ; preds = %.preheader1237.us.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1751.not.i = icmp eq i64 %i.ekl, %smax1762.i
  %indvar.next4533 = add i64 %indvar4532, 1
  br i1 %exitcond1751.not.i, label %.preheader1237.lr.ph.us.2.i, label %.preheader1237.lr.ph.us.1.i

.lr.ph1427.split.2.i:                             ; preds = %.lr.ph1427.split.2.i.preheader, %.lr.ph1427.split.2.i
  %indvars.iv1703.2.i = phi i64 [ %indvars.iv.next1704.2.i.7, %.lr.ph1427.split.2.i ], [ 13, %.lr.ph1427.split.2.i.preheader ] ; 9 uses
  %niter4754 = phi i64 [ %niter4754.next.7, %.lr.ph1427.split.2.i ], [ 0, %.lr.ph1427.split.2.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elb = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.elc = getelementptr inbounds nuw i8, ptr %i.elb, i64 803744
  store i8 0, ptr %i.elc, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eld = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.ele = getelementptr inbounds nuw i8, ptr %i.eld, i64 803866
  store i8 0, ptr %i.ele, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elf = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.elg = getelementptr inbounds nuw i8, ptr %i.elf, i64 803988
  store i8 0, ptr %i.elg, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elh = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.eli = getelementptr inbounds nuw i8, ptr %i.elh, i64 804110
  store i8 0, ptr %i.eli, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elj = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elj, i64 804232
  store i8 0, ptr %i.elk, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ell = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.elm = getelementptr inbounds nuw i8, ptr %i.ell, i64 804354
  store i8 0, ptr %i.elm, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eln = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.elo = getelementptr inbounds nuw i8, ptr %i.eln, i64 804476
  store i8 0, ptr %i.elo, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elp = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i
  %i.elq = getelementptr inbounds nuw i8, ptr %i.elp, i64 804598
  store i8 0, ptr %i.elq, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.2.i.7 = add nuw nsw i64 %indvars.iv1703.2.i, 8 ; 2 uses
  %niter4754.next.7 = add i64 %niter4754, 8       ; 2 uses
  %niter4754.ncmp.7 = icmp eq i64 %niter4754.next.7, %unroll_iter4753
  br i1 %niter4754.ncmp.7, label %.lr.ph1427.split.3.i.preheader.unr-lcssa, label %.lr.ph1427.split.2.i

.lr.ph1427.split.3.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.2.i
  br i1 %lcmp.mod4751.not, label %.lr.ph1427.split.3.i.preheader, label %.lr.ph1427.split.2.i.epil.preheader

.lr.ph1427.split.2.i.epil.preheader:              ; preds = %.lr.ph1427.split.3.i.preheader.unr-lcssa, %.lr.ph1427.split.2.i.preheader
  %indvars.iv1703.2.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.2.i.preheader ], [ %indvars.iv.next1704.2.i.7, %.lr.ph1427.split.3.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4752)
  br label %.lr.ph1427.split.2.i.epil

.lr.ph1427.split.2.i.epil:                        ; preds = %.lr.ph1427.split.2.i.epil, %.lr.ph1427.split.2.i.epil.preheader
  %indvars.iv1703.2.i.epil = phi i64 [ %indvars.iv.next1704.2.i.epil, %.lr.ph1427.split.2.i.epil ], [ %indvars.iv1703.2.i.epil.init, %.lr.ph1427.split.2.i.epil.preheader ] ; 2 uses
  %epil.iter4750 = phi i64 [ %epil.iter4750.next, %.lr.ph1427.split.2.i.epil ], [ 0, %.lr.ph1427.split.2.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.elr = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.2.i.epil
  %i.els = getelementptr inbounds nuw i8, ptr %i.elr, i64 803744
  store i8 0, ptr %i.els, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.2.i.epil = add nuw nsw i64 %indvars.iv1703.2.i.epil, 1
  %epil.iter4750.next = add i64 %epil.iter4750, 1 ; 2 uses
  %epil.iter4750.cmp.not = icmp eq i64 %epil.iter4750.next, %xtraiter4749
  br i1 %epil.iter4750.cmp.not, label %.lr.ph1427.split.3.i.preheader, label %.lr.ph1427.split.2.i.epil, !llvm.loop !218

.lr.ph1427.split.3.i.preheader:                   ; preds = %.lr.ph1427.split.2.i.epil, %.lr.ph1427.split.3.i.preheader.unr-lcssa
  br i1 %i.cem, label %.lr.ph1427.split.3.i.epil.preheader, label %.lr.ph1427.split.3.i

.preheader1237.lr.ph.us.2.i:                      ; preds = %._crit_edge1425.us.1.i, %._crit_edge1425.us.2.i
  %indvar4537 = phi i64 [ %indvar.next4538, %._crit_edge1425.us.2.i ], [ 0, %._crit_edge1425.us.1.i ] ; 2 uses
  %indvars.iv1712.2.i = phi i64 [ %i.elx, %._crit_edge1425.us.2.i ], [ 13, %._crit_edge1425.us.1.i ] ; 3 uses
  %i.elt = mul nuw nsw i64 %indvar4537, 122
  %i.elu = getelementptr i8, ptr %i.bqw, i64 %i.elt
  %scevgep4539 = getelementptr i8, ptr %i.elu, i64 805330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.elv = getelementptr inbounds nuw [122 x i8], ptr %i.cbt, i64 %indvars.iv1712.2.i ; 2 uses
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elv, i64 8
  store i8 0, ptr %i.elw, align 2, !tbaa !133
  %i.elx = add nuw nsw i64 %indvars.iv1712.2.i, 1 ; 3 uses
  %load_initial4540 = load i8, ptr %scevgep4539, align 2
  br label %.preheader1237.us.2.i

.preheader1237.us.2.i:                            ; preds = %.preheader1237.us.2.i, %.preheader1237.lr.ph.us.2.i
  %store_forwarded4541 = phi i8 [ %load_initial4540, %.preheader1237.lr.ph.us.2.i ], [ %i.emm, %.preheader1237.us.2.i ]
  %indvars.iv1709.2.i = phi i64 [ 9, %.preheader1237.lr.ph.us.2.i ], [ %indvars.iv.next1710.2.i, %.preheader1237.us.2.i ] ; 4 uses
  %invariant.gep1420.us.2.i = getelementptr i8, ptr %i.cbu, i64 %indvars.iv1709.2.i ; 2 uses
  %i.ely = getelementptr [122 x i8], ptr %invariant.gep1420.us.2.i, i64 %indvars.iv1712.2.i ; 4 uses
  %24 = getelementptr i8, ptr %i.ely, i64 -242
  %25 = load i8, ptr %24, align 1, !tbaa !133
  %i.elz = getelementptr i8, ptr %i.ely, i64 -120
  %i.ema = load i8, ptr %i.elz, align 1, !tbaa !133
  %i.emb = getelementptr inbounds nuw i8, ptr %i.ely, i64 2
  %i.emc = load i8, ptr %i.emb, align 1, !tbaa !133
  %gep1421.us.3.2.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.2.i, i64 %i.elx
  %i.emd = getelementptr inbounds nuw i8, ptr %gep1421.us.3.2.i, i64 2
  %i.eme = load i8, ptr %i.emd, align 1, !tbaa !133
  %26 = getelementptr i8, ptr %i.ely, i64 246
  %27 = load i8, ptr %26, align 1, !tbaa !133
  %28 = insertelement <4 x i8> poison, i8 %i.ema, i64 0
  %29 = insertelement <4 x i8> %28, i8 %25, i64 1
  %30 = insertelement <4 x i8> %29, i8 %i.emc, i64 2
  %31 = insertelement <4 x i8> %30, i8 %i.eme, i64 3
  %32 = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %31)
  %op.rdx4570.a = add i8 %32, %27                 ; 2 uses
  %i.emf = getelementptr i8, ptr %i.elv, i64 %indvars.iv1709.2.i
  %i.emg = trunc nuw nsw i64 %indvars.iv1709.2.i to i32
  %i.emh = urem i32 %i.emg, 5
  %i.emi = zext nneg i32 %i.emh to i64
  %i.emj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.emi ; 2 uses
  %i.emk = load i8, ptr %i.emj, align 1, !tbaa !133
  %i.eml = add i8 %store_forwarded4541, %op.rdx4570.a
  %i.emm = sub i8 %i.eml, %i.emk                  ; 2 uses
  store i8 %i.emm, ptr %i.emf, align 1, !tbaa !133
  store i8 %op.rdx4570.a, ptr %i.emj, align 1, !tbaa !133
  %indvars.iv.next1710.2.i = add nuw nsw i64 %indvars.iv1709.2.i, 1 ; 2 uses
  %exitcond1739.not.i = icmp eq i64 %indvars.iv.next1710.2.i, %smax1756.i
  br i1 %exitcond1739.not.i, label %._crit_edge1425.us.2.i, label %.preheader1237.us.2.i

._crit_edge1425.us.2.i:                           ; preds = %.preheader1237.us.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1742.not.i = icmp eq i64 %i.elx, %smax1762.i
  %indvar.next4538 = add i64 %indvar4537, 1
  br i1 %exitcond1742.not.i, label %.preheader1237.lr.ph.us.3.i, label %.preheader1237.lr.ph.us.2.i

.lr.ph1427.split.3.i:                             ; preds = %.lr.ph1427.split.3.i.preheader, %.lr.ph1427.split.3.i
  %indvars.iv1703.3.i = phi i64 [ %indvars.iv.next1704.3.i.7, %.lr.ph1427.split.3.i ], [ 13, %.lr.ph1427.split.3.i.preheader ] ; 9 uses
  %niter4760 = phi i64 [ %niter4760.next.7, %.lr.ph1427.split.3.i ], [ 0, %.lr.ph1427.split.3.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emn = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.emo = getelementptr inbounds nuw i8, ptr %i.emn, i64 818628
  store i8 0, ptr %i.emo, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emp = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.emq = getelementptr inbounds nuw i8, ptr %i.emp, i64 818750
  store i8 0, ptr %i.emq, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emr = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.ems = getelementptr inbounds nuw i8, ptr %i.emr, i64 818872
  store i8 0, ptr %i.ems, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emt = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.emu = getelementptr inbounds nuw i8, ptr %i.emt, i64 818994
  store i8 0, ptr %i.emu, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emv = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.emw = getelementptr inbounds nuw i8, ptr %i.emv, i64 819116
  store i8 0, ptr %i.emw, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emx = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.emy = getelementptr inbounds nuw i8, ptr %i.emx, i64 819238
  store i8 0, ptr %i.emy, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.emz = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.ena = getelementptr inbounds nuw i8, ptr %i.emz, i64 819360
  store i8 0, ptr %i.ena, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enb = getelementptr inbounds nuw [122 x i8], ptr %i.bqw, i64 %indvars.iv1703.3.i
  %i.enc = getelementptr inbounds nuw i8, ptr %i.enb, i64 819482
  store i8 0, ptr %i.enc, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.3.i.7 = add nuw nsw i64 %indvars.iv1703.3.i, 8 ; 2 uses
  %niter4760.next.7 = add i64 %niter4760, 8       ; 2 uses
  %niter4760.ncmp.7 = icmp eq i64 %niter4760.next.7, %unroll_iter4759
  br i1 %niter4760.ncmp.7, label %.preheader1258.lr.ph.i.unr-lcssa, label %.lr.ph1427.split.3.i

.preheader1237.lr.ph.us.3.i:                      ; preds = %._crit_edge1425.us.2.i, %._crit_edge1425.us.3.i
  %indvar4542 = phi i64 [ %indvar.next4543, %._crit_edge1425.us.3.i ], [ 0, %._crit_edge1425.us.2.i ] ; 2 uses
  %indvars.iv1712.3.i = phi i64 [ %i.enh, %._crit_edge1425.us.3.i ], [ 13, %._crit_edge1425.us.2.i ] ; 3 uses
  %i.end = mul nuw nsw i64 %indvar4542, 122
  %i.ene = getelementptr i8, ptr %i.bqw, i64 %i.end
  %scevgep4544 = getelementptr i8, ptr %i.ene, i64 820214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.enf = getelementptr inbounds nuw [122 x i8], ptr %i.cbv, i64 %indvars.iv1712.3.i ; 2 uses
  %i.eng = getelementptr inbounds nuw i8, ptr %i.enf, i64 8
  store i8 0, ptr %i.eng, align 2, !tbaa !133
  %i.enh = add nuw nsw i64 %indvars.iv1712.3.i, 1 ; 3 uses
  %load_initial4545 = load i8, ptr %scevgep4544, align 2
  br label %.preheader1237.us.3.i

.preheader1237.us.3.i:                            ; preds = %.preheader1237.us.3.i, %.preheader1237.lr.ph.us.3.i
  %store_forwarded4546 = phi i8 [ %load_initial4545, %.preheader1237.lr.ph.us.3.i ], [ %i.enw, %.preheader1237.us.3.i ]
  %indvars.iv1709.3.i = phi i64 [ 9, %.preheader1237.lr.ph.us.3.i ], [ %indvars.iv.next1710.3.i, %.preheader1237.us.3.i ] ; 4 uses
  %invariant.gep1420.us.3.i = getelementptr i8, ptr %i.cbw, i64 %indvars.iv1709.3.i ; 2 uses
  %i.eni = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %indvars.iv1712.3.i ; 4 uses
  %33 = getelementptr i8, ptr %i.eni, i64 -242
  %34 = load i8, ptr %33, align 1, !tbaa !133
  %i.enj = getelementptr i8, ptr %i.eni, i64 -120
  %i.enk = load i8, ptr %i.enj, align 1, !tbaa !133
  %i.enl = getelementptr inbounds nuw i8, ptr %i.eni, i64 2
  %i.enm = load i8, ptr %i.enl, align 1, !tbaa !133
  %gep1421.us.3.3.i = getelementptr [122 x i8], ptr %invariant.gep1420.us.3.i, i64 %i.enh
  %i.enn = getelementptr inbounds nuw i8, ptr %gep1421.us.3.3.i, i64 2
  %i.eno = load i8, ptr %i.enn, align 1, !tbaa !133
  %35 = getelementptr i8, ptr %i.eni, i64 246
  %36 = load i8, ptr %35, align 1, !tbaa !133
  %37 = insertelement <4 x i8> poison, i8 %i.enk, i64 0
  %38 = insertelement <4 x i8> %37, i8 %34, i64 1
  %39 = insertelement <4 x i8> %38, i8 %i.enm, i64 2
  %40 = insertelement <4 x i8> %39, i8 %i.eno, i64 3
  %41 = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %40)
  %op.rdx4569 = add i8 %41, %36                   ; 2 uses
  %i.enp = getelementptr i8, ptr %i.enf, i64 %indvars.iv1709.3.i
  %i.enq = trunc nuw nsw i64 %indvars.iv1709.3.i to i32
  %i.enr = urem i32 %i.enq, 5
  %i.ens = zext nneg i32 %i.enr to i64
  %i.ent = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ens ; 2 uses
  %i.enu = load i8, ptr %i.ent, align 1, !tbaa !133
  %i.env = add i8 %store_forwarded4546, %op.rdx4569
  %i.enw = sub i8 %i.env, %i.enu                  ; 2 uses
  store i8 %i.enw, ptr %i.enp, align 1, !tbaa !133
  store i8 %op.rdx4569, ptr %i.ent, align 1, !tbaa !133
  %indvars.iv.next1710.3.i = add nuw nsw i64 %indvars.iv1709.3.i, 1 ; 2 uses
  %exitcond1726.not.i = icmp eq i64 %indvars.iv.next1710.3.i, %smax1756.i
  br i1 %exitcond1726.not.i, label %._crit_edge1425.us.3.i, label %.preheader1237.us.3.i

._crit_edge1425.us.3.i:                           ; preds = %.preheader1237.us.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %exitcond1733.not.i = icmp eq i64 %i.enh, %smax1762.i
  %indvar.next4543 = add i64 %indvar4542, 1
  br i1 %exitcond1733.not.i, label %.preheader1265.split.i, label %.preheader1237.lr.ph.us.3.i

.lr.ph1427.split.i:                               ; preds = %.lr.ph1427.split.i.preheader, %.lr.ph1427.split.i
  %indvars.iv1703.i = phi i64 [ %indvars.iv.next1704.i.7, %.lr.ph1427.split.i ], [ 13, %.lr.ph1427.split.i.preheader ] ; 9 uses
  %niter4742 = phi i64 [ %niter4742.next.7, %.lr.ph1427.split.i ], [ 0, %.lr.ph1427.split.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enx = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 8
  store i8 0, ptr %i.eny, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.enz = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enz, i64 130
  store i8 0, ptr %i.eoa, align 4, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eob = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eob, i64 252
  store i8 0, ptr %i.eoc, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eod = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.eod, i64 374
  store i8 0, ptr %i.eoe, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eof = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eog = getelementptr inbounds nuw i8, ptr %i.eof, i64 496
  store i8 0, ptr %i.eog, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eoh = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eoh, i64 618
  store i8 0, ptr %i.eoi, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eoj = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eoj, i64 740
  store i8 0, ptr %i.eok, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eol = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eol, i64 862
  store i8 0, ptr %i.eom, align 16, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i.7 = add nuw nsw i64 %indvars.iv1703.i, 8 ; 2 uses
  %niter4742.next.7 = add i64 %niter4742, 8       ; 2 uses
  %niter4742.ncmp.7 = icmp eq i64 %niter4742.next.7, %unroll_iter4741
  br i1 %niter4742.ncmp.7, label %.lr.ph1427.split.1.i.preheader.unr-lcssa, label %.lr.ph1427.split.i

.lr.ph1427.split.1.i.preheader.unr-lcssa:         ; preds = %.lr.ph1427.split.i
  br i1 %lcmp.mod4739.not, label %.lr.ph1427.split.1.i.preheader, label %.lr.ph1427.split.i.epil.preheader

.lr.ph1427.split.i.epil.preheader:                ; preds = %.lr.ph1427.split.1.i.preheader.unr-lcssa, %.lr.ph1427.split.i.preheader
  %indvars.iv1703.i.epil.init = phi i64 [ 13, %.lr.ph1427.split.i.preheader ], [ %indvars.iv.next1704.i.7, %.lr.ph1427.split.1.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4740)
  br label %.lr.ph1427.split.i.epil

.lr.ph1427.split.i.epil:                          ; preds = %.lr.ph1427.split.i.epil, %.lr.ph1427.split.i.epil.preheader
  %indvars.iv1703.i.epil = phi i64 [ %indvars.iv.next1704.i.epil, %.lr.ph1427.split.i.epil ], [ %indvars.iv1703.i.epil.init, %.lr.ph1427.split.i.epil.preheader ] ; 2 uses
  %epil.iter4738 = phi i64 [ %epil.iter4738.next, %.lr.ph1427.split.i.epil ], [ 0, %.lr.ph1427.split.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.eon = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1703.i.epil
  %i.eoo = getelementptr inbounds nuw i8, ptr %i.eon, i64 8
  store i8 0, ptr %i.eoo, align 2, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next1704.i.epil = add nuw nsw i64 %indvars.iv1703.i.epil, 1
  %epil.iter4738.next = add i64 %epil.iter4738, 1 ; 2 uses
  %epil.iter4738.cmp.not = icmp eq i64 %epil.iter4738.next, %xtraiter4737
  br i1 %epil.iter4738.cmp.not, label %.lr.ph1427.split.1.i.preheader, label %.lr.ph1427.split.i.epil, !llvm.loop !219

.lr.ph1427.split.1.i.preheader:                   ; preds = %.lr.ph1427.split.i.epil, %.lr.ph1427.split.1.i.preheader.unr-lcssa
  br i1 %i.cek, label %.lr.ph1427.split.1.i.epil.preheader, label %.lr.ph1427.split.1.i

.preheader1264.i:                                 ; preds = %._crit_edge1482.i
  %i.eop = icmp sgt i32 %i.dqb, 26
  %or.cond2135.i = select i1 %i.cdw, i1 %i.eop, i1 false
  br i1 %or.cond2135.i, label %.preheader1257.i.preheader, label %._crit_edge1503.split.i

.preheader1257.i.preheader:                       ; preds = %.preheader1264.i
  %scevgep2033 = getelementptr i8, ptr %scevgep2030, i64 %i.cev
  %scevgep2037 = getelementptr i8, ptr %scevgep2036, i64 %i.cey
  %scevgep2042 = getelementptr i8, ptr %scevgep2041, i64 %i.cev
  %scevgep2047 = getelementptr i8, ptr %scevgep2046, i64 %i.cev
  %i.eoq = add nsw i64 %umax1244, -13             ; 2 uses
  %min.iters.check2079 = icmp ult i32 %i.cff, 21
  %i.eor = trunc nuw i64 %i.cfc to i32
  %mul.result2025 = shl i32 %i.eor, 2
  %mul.overflow2026 = icmp samesign ugt i64 %i.cfc, 1073741823
  %n.vec2081 = and i64 %i.eoq, -8                 ; 3 uses
  %i.eos = add nsw i64 %n.vec2081, 13
  %cmp.n2152 = icmp eq i64 %i.eoq, %n.vec2081
  br label %.preheader1257.i

.preheader1258.i:                                 ; preds = %._crit_edge1482.i, %.preheader1258.preheader.i
  %indvars.iv1858.i = phi i64 [ 6, %.preheader1258.preheader.i ], [ %indvars.iv.next1859.i, %._crit_edge1482.i ] ; 4 uses
  %indvars.iv1784.i = phi i64 [ 0, %.preheader1258.preheader.i ], [ %indvars.iv.next1785.i, %._crit_edge1482.i ] ; 6 uses
  %invariant.gep1430.i = getelementptr inbounds nuw [122 x i8], ptr %i.cay, i64 %indvars.iv1858.i
  %i.eot = add nuw nsw i64 %indvars.iv1858.i, %.11087.i
  %i.eou = trunc nuw i64 %i.eot to i32
  %i.eov = urem i32 %i.eou, 6
  %i.eow = zext nneg i32 %i.eov to i64
  %i.eox = getelementptr inbounds nuw [384 x i8], ptr @xtrans_fdc_interpolate.modarr, i64 %i.eow
  %i.eoy = mul nuw nsw i64 %indvars.iv1858.i, 122 ; 2 uses
  %i.eoz = getelementptr inbounds nuw [4 x i8], ptr %i.caz, i64 %i.eoy
  %invariant.gep1475.i = getelementptr inbounds nuw [4 x i8], ptr %i.cba, i64 %i.eoy
  %broadcast.splatinsert2156 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2157 = shufflevector <8 x i64> %broadcast.splatinsert2156, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.epa = mul nuw <8 x i64> %broadcast.splat2157, splat (i64 488)
  %i.epb = add nuw <8 x i64> %i.epa, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2166 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epb ; 13 uses
  %broadcast.splatinsert2250 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2251 = shufflevector <8 x i64> %broadcast.splatinsert2250, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.epc = mul nuw <8 x i64> %broadcast.splat2251, splat (i64 488)
  %i.epd = add nuw <8 x i64> %i.epc, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2260.1 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epd ; 13 uses
  %broadcast.splatinsert2438 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2439 = shufflevector <8 x i64> %broadcast.splatinsert2438, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.epe = mul nuw <8 x i64> %broadcast.splat2439, splat (i64 488)
  %i.epf = add nuw <8 x i64> %i.epe, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2448 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epf ; 13 uses
  %i.epg = mul nuw <8 x i64> %broadcast.splat2439, splat (i64 488)
  %i.eph = add nuw <8 x i64> %i.epg, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2448.1 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.eph ; 13 uses
  %broadcast.splatinsert2344 = insertelement <8 x i64> poison, i64 %indvars.iv1784.i, i64 0
  %broadcast.splat2345 = shufflevector <8 x i64> %broadcast.splatinsert2344, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.epi = mul nuw <8 x i64> %broadcast.splat2345, splat (i64 488)
  %i.epj = add nuw <8 x i64> %i.epi, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2354 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epj ; 13 uses
  %i.epk = mul nuw <8 x i64> %broadcast.splat2345, splat (i64 488)
  %i.epl = add nuw <8 x i64> %i.epk, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2354.1 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epl ; 13 uses
  %i.epm = mul nuw <8 x i64> %broadcast.splat2251, splat (i64 488)
  %i.epn = add nuw <8 x i64> %i.epm, <i64 0, i64 488, i64 976, i64 1464, i64 1952, i64 2440, i64 2928, i64 3416>
  %wide.gep2260 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epn ; 13 uses
  %i.epo = mul nuw <8 x i64> %broadcast.splat2157, splat (i64 488)
  %i.epp = add nuw <8 x i64> %i.epo, <i64 3904, i64 4392, i64 4880, i64 5368, i64 5856, i64 6344, i64 6832, i64 7320>
  %wide.gep2166.1 = getelementptr inbounds nuw i8, ptr %i.caz, <8 x i64> %i.epp ; 13 uses
  br label %vector.ph2437

._crit_edge1482.i:                                ; preds = %vector.ph2437
  %indvars.iv.next1859.i = add nuw nsw i64 %indvars.iv1858.i, 1
  %indvars.iv.next1785.i = add nuw nsw i64 %indvars.iv1784.i, 1
  %exitcond1242.not = icmp eq i64 %indvars.iv1784.i, %i.ced
  br i1 %exitcond1242.not, label %.preheader1264.i, label %.preheader1258.i

vector.ph2437:                                    ; preds = %vector.ph2437, %.preheader1258.i
  %indvars.iv1855.i = phi i64 [ 6, %.preheader1258.i ], [ %indvars.iv.next1856.i, %vector.ph2437 ] ; 5 uses
  %indvars.iv1774.i = phi i64 [ 0, %.preheader1258.i ], [ %indvars.iv.next1777.i, %vector.ph2437 ] ; 21 uses
  %invariant.gep1432.i = getelementptr inbounds nuw i8, ptr %invariant.gep1430.i, i64 %indvars.iv1855.i ; 4 uses
  %i.epq = load i8, ptr %invariant.gep1432.i, align 1, !tbaa !133
  %gep1433.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 14884
  %i.epr = load i8, ptr %gep1433.1.i, align 1, !tbaa !133
  %gep1433.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 29768
  %i.eps = load i8, ptr %gep1433.2.i, align 1, !tbaa !133
  %gep1433.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep1432.i, i64 44652
  %i.ept = load i8, ptr %gep1433.3.i, align 1, !tbaa !133
  %indvars.iv.next1777.i = add nuw nsw i64 %indvars.iv1774.i, 1 ; 9 uses
  %indvars.iv.next1777.1.i = add nuw nsw i64 %indvars.iv1774.i, 2 ; 8 uses
  %indvars.iv.next1777.2.i = add nuw nsw i64 %indvars.iv1774.i, 3 ; 8 uses
  %indvars.iv.next1777.3.i = add nuw nsw i64 %indvars.iv1774.i, 4 ; 8 uses
  %indvars.iv.next1777.4.i = add nuw nsw i64 %indvars.iv1774.i, 5 ; 8 uses
  %indvars.iv.next1777.5.i = add nuw nsw i64 %indvars.iv1774.i, 6 ; 8 uses
  %indvars.iv.next1777.6.i = add nuw nsw i64 %indvars.iv1774.i, 7 ; 8 uses
  %indvars.iv.next1777.7.i = add nuw nsw i64 %indvars.iv1774.i, 8 ; 8 uses
  %indvars.iv.next1777.8.i = add nuw nsw i64 %indvars.iv1774.i, 9 ; 8 uses
  %indvars.iv.next1777.9.i = add nuw nsw i64 %indvars.iv1774.i, 10 ; 8 uses
  %indvars.iv.next1777.10.i = add nuw nsw i64 %indvars.iv1774.i, 11 ; 8 uses
  %indvars.iv.next1777.11.i = add nuw nsw i64 %indvars.iv1774.i, 12 ; 8 uses
  %wide.masked.gather2450 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 96)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2452 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 100)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2453 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2448, i64 %indvars.iv1774.i
  %wide.masked.gather2454 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2453, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.epu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2454, %wide.masked.gather2450
  %i.epv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2454, %wide.masked.gather2452
  %wide.masked.gather2456 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 88)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.masked.gather2458 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @xtrans_fdc_interpolate.harr, <8 x i64> <i64 1248, i64 1144, i64 1040, i64 936, i64 832, i64 728, i64 624, i64 520>), <8 x i64> splat (i64 92)), <8 x i1> splat (i1 true), <8 x float> poison)
  %wide.gep2459 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2448, i64 %indvars.iv.next1777.i
  %wide.masked.gather2460 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2459, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12 ; 2 uses
  %i.epw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2460, %wide.masked.gather2456
  %i.epx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather2460, %wide.masked.gather2458
  %i.epy = fadd reassoc nsz arcp contract afn <8 x float> %i.epw, %i.epu
end_hunk_0
begin_hunk_1_@process:bb.a

bb.lg:                                            ; preds = %.preheader1235.3.i, %bb.lf
  %i.fsv = phi <4 x float> [ %i.fsn, %bb.lf ], [ %i.fsu, %.preheader1235.3.i ] ; 4 uses
  %i.fsw = extractelement <4 x float> %i.fsv, i64 0
  %i.fsx = extractelement <4 x float> %i.fsv, i64 3 ; 3 uses
  %i.fsy = fdiv reassoc nsz arcp contract afn float %i.fsw, %i.fsx ; 2 uses
  %i.fsz = extractelement <4 x float> %i.fsv, i64 2
  %i.fta = fdiv reassoc nsz arcp contract afn float %i.fsz, %i.fsx ; 2 uses
  %i.ftb = getelementptr inbounds nuw [4 x i8], ptr %i.flw, i64 %indvars.iv1884.i
  %.sroa.014.0.copyload.i = load float, ptr %i.ftb, align 4 ; 3 uses
  %i.ftc = getelementptr [4 x i8], ptr %i.flx, i64 %indvars.iv1884.i ; 3 uses
  %i.ftd = getelementptr i8, ptr %i.ftc, i64 -4
  %.sroa.9.4.copyload.i = load float, ptr %i.ftd, align 4 ; 3 uses
  %.sroa.22.4.copyload.i = load float, ptr %i.ftc, align 4 ; 3 uses
  %.sroa.32.4..sroa_idx.i = getelementptr i8, ptr %i.ftc, i64 4
  %.sroa.32.4.copyload.i = load float, ptr %.sroa.32.4..sroa_idx.i, align 4 ; 3 uses
  %i.fte = getelementptr inbounds nuw [4 x i8], ptr %i.fly, i64 %indvars.iv1884.i
  %.sroa.41.16.copyload.i = load float, ptr %i.fte, align 4 ; 3 uses
  %i.ftf = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.copyload.i, %.sroa.9.4.copyload.i ; 2 uses
  %spec.select1151.i = select nsz i1 %i.ftf, float %.sroa.014.0.copyload.i, float %.sroa.9.4.copyload.i ; 2 uses
  %spec.select1152.i = select nsz i1 %i.ftf, float %.sroa.9.4.copyload.i, float %.sroa.014.0.copyload.i ; 2 uses
  %i.ftg = fcmp reassoc nsz arcp contract afn ogt float %.sroa.32.4.copyload.i, %.sroa.41.16.copyload.i ; 2 uses
  %.sroa.41.0.i = select nsz i1 %i.ftg, float %.sroa.32.4.copyload.i, float %.sroa.41.16.copyload.i ; 2 uses
  %.sroa.32.0.i = select nsz i1 %i.ftg, float %.sroa.41.16.copyload.i, float %.sroa.32.4.copyload.i ; 2 uses
  %i.fth = fcmp reassoc nsz arcp contract afn ogt float %spec.select1152.i, %.sroa.32.0.i
  %.sroa.32.1.i = select nsz i1 %i.fth, float %spec.select1152.i, float %.sroa.32.0.i ; 2 uses
  %i.fti = fcmp reassoc nsz arcp contract afn ogt float %spec.select1151.i, %.sroa.41.0.i
  %.sroa.9.1.i = select nsz i1 %i.fti, float %.sroa.41.0.i, float %spec.select1151.i ; 3 uses
  %i.ftj = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.1.i, %.sroa.22.4.copyload.i ; 2 uses
  %.sroa.22.0.i = select nsz i1 %i.ftj, float %.sroa.9.1.i, float %.sroa.22.4.copyload.i ; 2 uses
  %.sroa.9.2.i = select nsz i1 %i.ftj, float %.sroa.22.4.copyload.i, float %.sroa.9.1.i ; 2 uses
  %i.ftk = fcmp reassoc nsz arcp contract afn ogt float %.sroa.22.0.i, %.sroa.32.1.i
  %.sroa.22.1.i = select nsz i1 %i.ftk, float %.sroa.32.1.i, float %.sroa.22.0.i ; 2 uses
  %i.ftl = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.2.i, %.sroa.22.1.i
  %.sroa.22.2.i = select nsz i1 %i.ftl, float %.sroa.9.2.i, float %.sroa.22.1.i ; 5 uses
  %i.ftm = getelementptr inbounds nuw [4 x i8], ptr %i.flz, i64 %indvars.iv1884.i
  %.sroa.014.0.copyload.1.i = load float, ptr %i.ftm, align 4 ; 3 uses
  %i.ftn = getelementptr [4 x i8], ptr %i.fma, i64 %indvars.iv1884.i ; 3 uses
  %i.fto = getelementptr i8, ptr %i.ftn, i64 -4
  %.sroa.9.4.copyload.1.i = load float, ptr %i.fto, align 4 ; 3 uses
  %.sroa.22.4.copyload.1.i = load float, ptr %i.ftn, align 4 ; 3 uses
  %.sroa.32.4..sroa_idx.1.i = getelementptr i8, ptr %i.ftn, i64 4
  %.sroa.32.4.copyload.1.i = load float, ptr %.sroa.32.4..sroa_idx.1.i, align 4 ; 3 uses
  %i.ftp = getelementptr inbounds nuw [4 x i8], ptr %i.fmb, i64 %indvars.iv1884.i
  %.sroa.41.16.copyload.1.i = load float, ptr %i.ftp, align 4 ; 3 uses
  %i.ftq = fcmp reassoc nsz arcp contract afn ogt float %.sroa.014.0.copyload.1.i, %.sroa.9.4.copyload.1.i ; 2 uses
  %spec.select1151.1.i = select nsz i1 %i.ftq, float %.sroa.014.0.copyload.1.i, float %.sroa.9.4.copyload.1.i ; 2 uses
  %spec.select1152.1.i = select nsz i1 %i.ftq, float %.sroa.9.4.copyload.1.i, float %.sroa.014.0.copyload.1.i ; 2 uses
  %i.ftr = fcmp reassoc nsz arcp contract afn ogt float %.sroa.32.4.copyload.1.i, %.sroa.41.16.copyload.1.i ; 2 uses
  %.sroa.41.0.1.i = select nsz i1 %i.ftr, float %.sroa.32.4.copyload.1.i, float %.sroa.41.16.copyload.1.i ; 2 uses
  %.sroa.32.0.1.i = select nsz i1 %i.ftr, float %.sroa.41.16.copyload.1.i, float %.sroa.32.4.copyload.1.i ; 2 uses
  %i.fts = fcmp reassoc nsz arcp contract afn ogt float %spec.select1152.1.i, %.sroa.32.0.1.i
  %.sroa.32.1.1.i = select nsz i1 %i.fts, float %spec.select1152.1.i, float %.sroa.32.0.1.i ; 2 uses
  %i.ftt = fcmp reassoc nsz arcp contract afn ogt float %spec.select1151.1.i, %.sroa.41.0.1.i
  %.sroa.9.1.1.i = select nsz i1 %i.ftt, float %.sroa.41.0.1.i, float %spec.select1151.1.i ; 3 uses
  %i.ftu = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.1.1.i, %.sroa.22.4.copyload.1.i ; 2 uses
  %.sroa.22.0.1.i = select nsz i1 %i.ftu, float %.sroa.9.1.1.i, float %.sroa.22.4.copyload.1.i ; 2 uses
  %.sroa.9.2.1.i = select nsz i1 %i.ftu, float %.sroa.22.4.copyload.1.i, float %.sroa.9.1.1.i ; 2 uses
  %i.ftv = fcmp reassoc nsz arcp contract afn ogt float %.sroa.22.0.1.i, %.sroa.32.1.1.i
  %.sroa.22.1.1.i = select nsz i1 %i.ftv, float %.sroa.32.1.1.i, float %.sroa.22.0.1.i ; 2 uses
  %i.ftw = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.2.1.i, %.sroa.22.1.1.i
  %.sroa.22.2.1.i = select nsz i1 %i.ftw, float %.sroa.9.2.1.i, float %.sroa.22.1.1.i ; 5 uses
  %i.ftx = fmul reassoc nsz arcp contract afn float %i.fsy, 2.627000e-01
  %i.fty = extractelement <4 x float> %i.fsv, i64 1
  %i.ftz = fmul reassoc nsz arcp contract afn float %i.fty, f0x3F2D9168
  %i.fua = fdiv reassoc nsz arcp contract afn float %i.ftz, %i.fsx
  %i.fub = fadd reassoc nsz arcp contract afn float %i.fua, %i.ftx
  %i.fuc = fmul reassoc nsz arcp contract afn float %i.fta, 5.930000e-02
  %i.fud = fadd reassoc nsz arcp contract afn float %i.fub, %i.fuc ; 5 uses
  %i.fue = fsub reassoc nsz arcp contract afn float %i.fta, %i.fud
  %i.fuf = fmul reassoc nsz arcp contract afn float %i.fue, 5.643300e-01 ; 2 uses
  %i.fug = fsub reassoc nsz arcp contract afn float %i.fsy, %i.fud
  %i.fuh = fmul reassoc nsz arcp contract afn float %i.fug, f0x3F2D9B3D ; 4 uses
  %i.fui = fcmp reassoc nsz arcp contract afn olt float %.sroa.22.2.i, 0.000000e+00
  %i.fuj = fneg reassoc nsz arcp contract afn float %.sroa.22.2.i
  %i.fuk = select reassoc nsz arcp contract afn i1 %i.fui, float %i.fuj, float %.sroa.22.2.i ; 2 uses
  %i.ful = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fuf)
  %i.fum = fcmp reassoc nsz arcp contract afn olt float %i.fuk, %i.ful
  %i.fun = fcmp reassoc nsz arcp contract afn olt float %.sroa.22.2.1.i, 0.000000e+00
  %i.fuo = fneg reassoc nsz arcp contract afn float %.sroa.22.2.1.i
  %i.fup = select reassoc nsz arcp contract afn i1 %i.fun, float %i.fuo, float %.sroa.22.2.1.i ; 2 uses
  %i.fuq = fcmp reassoc nsz arcp contract afn olt float %i.fuh, 0.000000e+00
  %i.fur = fneg reassoc nsz arcp contract afn float %i.fuh
  %i.fus = select reassoc nsz arcp contract afn i1 %i.fuq, float %i.fur, float %i.fuh ; 2 uses
  %i.fut = fmul reassoc nsz arcp contract afn float %i.fus, 1.020000e+00 ; 2 uses
  %i.fuu = fcmp reassoc nsz arcp contract afn olt float %i.fup, %i.fut
  %i.fuv = and i1 %i.fum, %i.fuu
  %i.fuw = select reassoc nsz arcp contract afn i1 %i.fuv, float %.sroa.22.2.i, float %i.fuf
  %i.fux = fmul reassoc nsz arcp contract afn float %i.fuw, %spec.select1142.i
  %i.fuy = fmul reassoc nsz arcp contract afn float %.sroa.22.2.i, %spec.select.i489
  %i.fuz = fadd reassoc nsz arcp contract afn float %i.fux, %i.fuy
  %i.fva = fcmp reassoc nsz arcp contract afn olt float %i.fup, %i.fus
  %i.fvb = fcmp reassoc nsz arcp contract afn olt float %i.fuk, %i.fut
  %i.fvc = and i1 %i.fvb, %i.fva
  %i.fvd = select reassoc nsz arcp contract afn i1 %i.fvc, float %.sroa.22.2.1.i, float %i.fuh
  %i.fve = fmul reassoc nsz arcp contract afn float %i.fvd, %spec.select1142.i
  %i.fvf = fmul reassoc nsz arcp contract afn float %.sroa.22.2.1.i, %spec.select.i489
  %i.fvg = fadd reassoc nsz arcp contract afn float %i.fve, %i.fvf ; 2 uses
  %i.fvh = fmul reassoc nsz arcp contract afn float %i.fvg, 1.474600e+00
  %i.fvi = fadd reassoc nsz arcp contract afn float %i.fvh, %i.fud ; 2 uses
  %.neg1158.i = fmul reassoc nsz arcp contract afn float %i.fvg, f0x3F124433
  %i.fvj = fsub reassoc nsz arcp contract afn float %i.fud, %.neg1158.i
  %i.fvk = trunc nuw nsw i64 %indvars.iv1884.i to i32
  %i.fvl = add i32 %i.flv, %i.fvk
  %i.fvm = shl nsw i32 %i.fvl, 2
  %i.fvn = sext i32 %i.fvm to i64
  %i.fvo = fcmp reassoc nsz arcp contract afn olt float %i.fvi, 0.000000e+00
  %spec.select1153.i = select reassoc nsz arcp contract afn i1 %i.fvo, float 0.000000e+00, float %i.fvi
  %i.fvp = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %i.fvn ; 2 uses
  store float %spec.select1153.i, ptr %i.fvp, align 4, !tbaa !12
  %i.fvq = getelementptr i8, ptr %i.fvp, i64 4
  %i.fvr = insertelement <2 x float> poison, float %i.fuz, i64 0
  %i.fvs = shufflevector <2 x float> %i.fvr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fvt = fmul reassoc nsz arcp contract afn <2 x float> %i.fvs, <float f0xBE1EB498, float f0x3FE2D151>
  %i.fvu = insertelement <2 x float> poison, float %i.fvj, i64 0
  %i.fvv = insertelement <2 x float> %i.fvu, float %i.fud, i64 1
  %i.fvw = fadd reassoc nsz arcp contract afn <2 x float> %i.fvv, %i.fvt ; 2 uses
  %i.fvx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fvw, zeroinitializer
  %i.fvy = select <2 x i1> %i.fvx, <2 x float> zeroinitializer, <2 x float> %i.fvw
  store <2 x float> %i.fvy, ptr %i.fvq, align 4, !tbaa !12
  %indvars.iv.next1885.i = add nuw nsw i64 %indvars.iv1884.i, 1 ; 2 uses
  %exitcond1245.not = icmp eq i64 %indvars.iv.next1885.i, %umax1244
  br i1 %exitcond1245.not, label %._crit_edge1501.i, label %scalar.ph2078, !llvm.loop !228

xtrans_fdc_interpolate.exit:                      ; preds = %bb.ic, %._crit_edge1513.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %demosaic_box3.exit

bb.lh:                                            ; preds = %bb.ia
  br i1 %or.cond29, label %bb.li, label %bb.nt

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.fvz = tail call ptr @dt_alloc_aligned(i64 noundef %i.apg) #27 ; 38 uses
  %i.fwa = ptrtoaddr ptr %i.fvz to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fvz, i64 64) ]
  %.not.i498 = icmp eq ptr %i.fvz, null
  br i1 %.not.i498, label %bb.lj, label %.preheader1065.i

bb.lj:                                            ; preds = %bb.li
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.210) #27
  br label %xtrans_markesteijn_interpolate.exit

.preheader1065.i:                                 ; preds = %bb.li, %bb.ns
  %indvars.iv1325.i = phi i64 [ %indvars.iv.next1326.i, %bb.ns ], [ 0, %bb.li ] ; 4 uses
  %.08441080.i = phi i16 [ %.3.4.i, %bb.ns ], [ 0, %bb.li ]
  %.08481079.i = phi i16 [ %.3851.4.i, %bb.ns ], [ 0, %bb.li ]
  %i.fwb = trunc nsw i64 %indvars.iv1325.i to i32
  %i.fwc = trunc nuw nsw i64 %indvars.iv1325.i to i16
  %i.fwd = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %indvars.iv1325.i
  %i.fwe = insertelement <4 x i32> poison, i32 %i.fwb, i64 0
  %i.fwf = shufflevector <4 x i32> %i.fwe, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fwg = or <4 x i32> %i.fwf, <i32 600, i32 poison, i32 poison, i32 poison>
  %i.fwh = add nuw nsw <4 x i32> %i.fwf, <i32 poison, i32 601, i32 600, i32 599>
  %i.fwi = shufflevector <4 x i32> %i.fwg, <4 x i32> %i.fwh, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fwj = urem <4 x i32> %i.fwi, splat (i32 6)   ; 4 uses
  %i.fwk = extractelement <4 x i32> %i.fwj, i64 0
  %i.fwl = zext nneg i32 %i.fwk to i64
  %i.fwm = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fwl
  %i.fwn = extractelement <4 x i32> %i.fwj, i64 1
  %i.fwo = zext nneg i32 %i.fwn to i64
  %i.fwp = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fwo
  %i.fwq = extractelement <4 x i32> %i.fwj, i64 2
  %i.fwr = zext nneg i32 %i.fwq to i64
  %i.fws = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fwr ; 2 uses
  %i.fwt = extractelement <4 x i32> %i.fwj, i64 3
  %i.fwu = zext nneg i32 %i.fwt to i64
  %i.fwv = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.fwu
  br label %.preheader1064.i

bb.lk:                                            ; preds = %bb.ns
  %i.fww = sub nsw i32 %i.axe, %i.aph             ; 3 uses
  %i.fwx = icmp slt i32 %.neg.i511, %i.fww
  br i1 %i.fwx, label %.lr.ph1250.i, label %._crit_edge1251.i

.lr.ph1250.i:                                     ; preds = %bb.lk
  %i.fwy = getelementptr inbounds nuw i8, ptr %i.fvz, i64 %i.api ; 12 uses
  %i.fwz = getelementptr inbounds nuw i8, ptr %i.fwy, i64 178608 ; 4 uses
  %i.fxa = getelementptr inbounds nuw i8, ptr %i.fwy, i64 59536 ; 4 uses
  %i.fxb = getelementptr inbounds nuw i8, ptr %i.fwy, i64 %i.apj ; 3 uses
  %i.fxc = add nsw i32 %i.axe, %i.aph             ; 2 uses
  %i.fxd = shl nsw i32 %i.axe, 1
  %i.fxe = add i32 %i.fxd, -2                     ; 2 uses
  %i.fxf = zext nneg i16 %.3.4.i to i32           ; 3 uses
  %i.fxg = zext nneg i16 %.3851.4.i to i32        ; 2 uses
  %i.fxh = getelementptr inbounds nuw i8, ptr %i.fwy, i64 119072
  br i1 %i.apl, label %.lr.ph1246.us.preheader.i, label %.lr.ph1250.split.i

.lr.ph1246.us.preheader.i:                        ; preds = %.lr.ph1250.i
  %i.fxi = sext i32 %i.axe to i64                 ; 2 uses
  %i.fxj = zext i16 %.3.4.i to i64                ; 4 uses
  %i.fxk = zext nneg i16 %.3851.4.i to i64
  %i.fxl = getelementptr inbounds nuw i8, ptr %i.fvz, i64 178608
  %i.fxm = getelementptr inbounds nuw i8, ptr %i.fvz, i64 357216
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fvz, i64 535824
  %invariant.gep = getelementptr i8, ptr %i.fxb, i64 %i.apv ; 4 uses
  %i.fxo = add i64 %i.avb, %i.fwa
  %i.fxp = add i64 %i.avc, %i.fwa
  %i.fxq = add i64 %i.avd, %i.fwa
  %i.fxr = insertelement <2 x i64> <i64 poison, i64 119072>, i64 %i.fxo, i64 0
  %i.fxs = getelementptr i8, ptr %i.fvz, i64 %i.api
  %i.fxt = getelementptr i8, ptr %i.fxs, i64 %i.auf
  %i.fxu = getelementptr i8, ptr %i.fvz, i64 %i.aug
  %i.fxv = getelementptr i8, ptr %i.fxu, i64 %i.auh
  %i.fxw = getelementptr i8, ptr %i.fxv, i64 -14884
  %i.fxx = getelementptr i8, ptr %i.fvz, i64 %i.api
  %i.fxy = getelementptr i8, ptr %i.fxx, i64 %i.auk
  %i.fxz = getelementptr i8, ptr %i.fxy, i64 178116
  %i.fya = getelementptr i8, ptr %i.fvz, i64 %i.aul
  %i.fyb = getelementptr i8, ptr %i.fya, i64 %i.aum
  %i.fyc = getelementptr i8, ptr %i.fyb, i64 118580
  %i.fyd = getelementptr i8, ptr %i.fvz, i64 %i.aun
  %i.fye = getelementptr i8, ptr %i.fyd, i64 178120
  %i.fyf = getelementptr i8, ptr %i.fvz, i64 %i.auo
  %i.fyg = getelementptr i8, ptr %i.fyf, i64 %i.aum
  %i.fyh = getelementptr i8, ptr %i.fyg, i64 118584
  %i.fyi = getelementptr i8, ptr %i.fvz, i64 %i.aun
  %i.fyj = getelementptr i8, ptr %i.fyi, i64 178124
  %i.fyk = getelementptr i8, ptr %i.fvz, i64 %i.aup
  %i.fyl = getelementptr i8, ptr %i.fyk, i64 %i.aum
  %i.fym = getelementptr i8, ptr %i.fyl, i64 118588
  %i.fyn = getelementptr i8, ptr %i.fvz, i64 %i.auq
  %i.fyo = getelementptr i8, ptr %i.fyn, i64 178604
  %i.fyp = getelementptr i8, ptr %i.fvz, i64 %i.aur
  %i.fyq = getelementptr i8, ptr %i.fyp, i64 %i.aum
  %i.fyr = getelementptr i8, ptr %i.fyq, i64 119068
  %i.fys = getelementptr i8, ptr %i.fvz, i64 %i.auq
  %i.fyt = getelementptr i8, ptr %i.fys, i64 178608
  %i.fyu = getelementptr i8, ptr %i.fvz, i64 %i.aus
  %i.fyv = getelementptr i8, ptr %i.fyu, i64 %i.aum
  %i.fyw = getelementptr i8, ptr %i.fyv, i64 119072
  %i.fyx = getelementptr i8, ptr %i.fvz, i64 %i.aut
  %i.fyy = getelementptr i8, ptr %i.fyx, i64 178612
  %i.fyz = getelementptr i8, ptr %i.fvz, i64 %i.auu
  %i.fza = getelementptr i8, ptr %i.fyz, i64 %i.aum
  %i.fzb = getelementptr i8, ptr %i.fza, i64 119076
  %i.fzc = getelementptr i8, ptr %i.fvz, i64 %i.aut
  %i.fzd = getelementptr i8, ptr %i.fzc, i64 179092
  %i.fze = getelementptr i8, ptr %i.fvz, i64 %i.auv
  %i.fzf = getelementptr i8, ptr %i.fze, i64 %i.aum
  %i.fzg = getelementptr i8, ptr %i.fzf, i64 119556
  %i.fzh = getelementptr i8, ptr %i.fvz, i64 %i.auw
  %i.fzi = getelementptr i8, ptr %i.fzh, i64 179096
  %i.fzj = getelementptr i8, ptr %i.fvz, i64 %i.aux
  %i.fzk = getelementptr i8, ptr %i.fzj, i64 %i.aum
  %i.fzl = getelementptr i8, ptr %i.fzk, i64 119560
  %i.fzm = getelementptr i8, ptr %i.fvz, i64 %i.auw
  %i.fzn = getelementptr i8, ptr %i.fzm, i64 179100
  %i.fzo = getelementptr i8, ptr %i.fvz, i64 %i.auy
  %i.fzp = getelementptr i8, ptr %i.fzo, i64 %i.aum
  %i.fzq = getelementptr i8, ptr %i.fzp, i64 119564
  %i.fzr = getelementptr i8, ptr %i.fvz, i64 %i.avq
  %i.fzs = getelementptr i8, ptr %i.fzr, i64 %i.avr
  %i.fzt = getelementptr i8, ptr %i.fzs, i64 -5
  br label %.lr.ph1246.us.i

.lr.ph1246.us.i:                                  ; preds = %._crit_edge1247.us.i, %.lr.ph1246.us.preheader.i
  %indvars.iv1185 = phi i32 [ %indvars.iv.next1186, %._crit_edge1247.us.i ], [ %i.ato, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1426.i = phi i32 [ %indvars.iv.next1427.i, %._crit_edge1247.us.i ], [ %i.aqc, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1407.i = phi i32 [ %indvars.iv.next1408.i, %._crit_edge1247.us.i ], [ %i.aqa, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1380.i = phi i32 [ %indvars.iv.next1381.i, %._crit_edge1247.us.i ], [ %i.apz, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1366.i = phi i32 [ %indvars.iv.next1367.i, %._crit_edge1247.us.i ], [ %i.apy, %.lr.ph1246.us.preheader.i ] ; 2 uses
  %indvars.iv1341.i = phi i32 [ %indvars.iv.next1342.i, %._crit_edge1247.us.i ], [ %.neg.i511, %.lr.ph1246.us.preheader.i ] ; 13 uses
  %i.fzu = sext i32 %indvars.iv1426.i to i64
  %i.fzv = sext i32 %indvars.iv1407.i to i64
  %i.fzw = sext i32 %indvars.iv1380.i to i64
  %i.fzx = sext i32 %indvars.iv1366.i to i64
  %i.fzy = sext i32 %indvars.iv1341.i to i64      ; 6 uses
  %i.fzz = add nsw i32 %indvars.iv1341.i, 122
  %..us.i = tail call i32 @llvm.smin.i32(i32 %i.fzz, i32 %i.fxc) ; 7 uses
  %i.gaa = icmp sgt i32 %i.fxc, %indvars.iv1341.i
  %i.gab = add nsw i32 %indvars.iv1341.i, 3       ; 3 uses
  %i.gac = add nsw i32 %..us.i, -3                ; 3 uses
  %i.gad = icmp slt i32 %i.gab, %i.gac
  %i.gae = add nsw i32 %..us.i, -4
  %i.gaf = sub nsw i32 %indvars.iv1341.i, %i.fxf
  %.fr.us.i = freeze i32 %i.gaf
  %i.gag = add i32 %.fr.us.i, %i.apq              ; 2 uses
  %i.gah = srem i32 %i.gag, 3
  %i.gai = add i32 %i.gag, %i.fxf
  %i.gaj = sub i32 %i.gai, %i.gah                 ; 2 uses
  %i.gak = sub nsw i32 %..us.i, %i.app            ; 3 uses
  %i.gal = icmp sge i32 %i.gaj, %i.gak
  %i.gam = add nsw i32 %indvars.iv1341.i, %i.app
  %i.gan = icmp sge i32 %i.gam, %i.gak
  %i.gao = add nsw i32 %indvars.iv1341.i, %i.apr
  %i.gap = sub nsw i32 %..us.i, %i.apr            ; 2 uses
  %i.gaq = icmp slt i32 %i.gao, %i.gap
  %i.gar = add nsw i32 %indvars.iv1341.i, 6
  %i.gas = add nsw i32 %..us.i, -6                ; 2 uses
  %i.gat = icmp sge i32 %i.gar, %i.gas
  %i.gau = sub nsw i32 %..us.i, %indvars.iv1341.i ; 4 uses
  %i.gav = sub nsw i32 %i.gau, %i.aps             ; 2 uses
  %i.gaw = icmp slt i32 %i.aps, %i.gav
  %i.gax = sub nsw i32 %i.gau, %i.apt             ; 2 uses
  %i.gay = icmp slt i32 %i.apt, %i.gax
  %i.gaz = sub nsw i32 %i.gau, %i.apu             ; 2 uses
  %i.gba = icmp slt i32 %i.apu, %i.gaz
  %i.gbb = sub nsw i32 %i.gau, %i.aph             ; 2 uses
  %i.gbc = icmp slt i32 %i.aph, %i.gbb
  %i.gbd = sext i32 %..us.i to i64
  %i.gbe = sext i32 %i.gac to i64
  %i.gbf = sext i32 %i.gas to i64
  %i.gbg = sext i32 %i.gaj to i64
  %i.gbh = sext i32 %i.gak to i64                 ; 2 uses
  %i.gbi = sext i32 %i.gap to i64
  %i.gbj = sext i32 %i.gav to i64
  %i.gbk = sext i32 %i.gax to i64
  %i.gbl = sext i32 %i.gaz to i64
  %i.gbm = sext i32 %i.gbb to i64                 ; 6 uses
  br label %bb.ll

bb.ll:                                            ; preds = %._crit_edge1241.split.us.i, %.lr.ph1246.us.i
  %indvar2627 = phi i32 [ %indvar.next2628, %._crit_edge1241.split.us.i ], [ 0, %.lr.ph1246.us.i ] ; 3 uses
  %indvars.iv1177 = phi i32 [ %indvars.iv.next1178, %._crit_edge1241.split.us.i ], [ %i.ato, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1421.i = phi i32 [ %indvars.iv.next1422.i, %._crit_edge1241.split.us.i ], [ %i.aqc, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1402.i = phi i32 [ %indvars.iv.next1403.i, %._crit_edge1241.split.us.i ], [ %i.aqa, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1375.i = phi i32 [ %indvars.iv.next1376.i, %._crit_edge1241.split.us.i ], [ %i.apz, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1361.i = phi i32 [ %indvars.iv.next1362.i, %._crit_edge1241.split.us.i ], [ %i.apy, %.lr.ph1246.us.i ] ; 2 uses
  %indvars.iv1336.i = phi i32 [ %indvars.iv.next1337.i, %._crit_edge1241.split.us.i ], [ %.neg.i511, %.lr.ph1246.us.i ] ; 14 uses
  %i.gbn = sext i32 %indvars.iv1336.i to i64
  %i.gbo = add nsw i64 %i.gbn, 1
  %i.gbp = mul i32 %reass.sub955.i, %indvar2627
  %i.gbq = add i32 %i.auj, %i.gbp
  %smin2629 = call i32 @llvm.smin.i32(i32 %i.gbq, i32 %i.apm)
  %i.gbr = mul i32 %reass.sub955.i.neg, %indvar2627
  %i.gbs = add i32 %i.gbr, 2
  %i.gbt = add i32 %smin2629, %i.gbs
  %i.gbu = zext i32 %i.gbt to i64
  %umax2630 = call i64 @llvm.umax.i64(i64 %i.aui, i64 %i.gbu) ; 2 uses
  %i.gbv = shl nuw nsw i64 %umax2630, 2           ; 9 uses
  %i.gbw = sext i32 %indvars.iv1421.i to i64
  %i.gbx = sext i32 %indvars.iv1402.i to i64
  %i.gby = sext i32 %indvars.iv1375.i to i64
  %i.gbz = sext i32 %indvars.iv1361.i to i64
  %i.gca = sext i32 %indvars.iv1336.i to i64      ; 7 uses
  %i.gcb = add i32 %indvars.iv1336.i, 122
  %i.gcc = tail call i32 @llvm.smin.i32(i32 %i.gcb, i32 %i.apm) ; 7 uses
  %i.gcd = icmp sgt i32 %i.apm, %indvars.iv1336.i
  %or.cond.i512 = select i1 %i.gaa, i1 %i.gcd, i1 false
  br i1 %or.cond.i512, label %.preheader1056.us.preheader.i, label %.preheader1061.us.i

.preheader1056.us.preheader.i:                    ; preds = %bb.ll
  %i.gce = sext i32 %i.gcc to i64
  br label %.preheader1056.us.i

.preheader1056.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1056.us.preheader.i
  %indvars.iv1187 = phi i32 [ %indvars.iv.next1188, %._crit_edge.us.i ], [ %indvars.iv1185, %.preheader1056.us.preheader.i ] ; 2 uses
  %indvars.iv1343.i = phi i64 [ %indvars.iv.next1344.i, %._crit_edge.us.i ], [ %i.fzy, %.preheader1056.us.preheader.i ] ; 6 uses
  %i.gcf = sext i32 %indvars.iv1187 to i64
  %i.gcg = sub nsw i64 %indvars.iv1343.i, %i.fzy
  %i.gch = getelementptr inbounds [1464 x i8], ptr %i.fvz, i64 %i.gcg
  %i.gci = icmp slt i64 %indvars.iv1343.i, %i.fxi ; 2 uses
  %i.gcj = trunc i64 %indvars.iv1343.i to i32     ; 4 uses
  %i.gck = sub i32 %i.fxe, %i.gcj
  %i.gcl = tail call i32 @llvm.abs.i32(i32 %i.gcj, i1 true)
  %i.gcm = mul nuw nsw i64 %indvars.iv1343.i, %i.aoc
  %..i519 = select i1 %i.gci, i32 %i.gcl, i32 %i.gck ; 2 uses
  %i.gcn = insertelement <2 x i32> poison, i32 %i.gcj, i64 0
  %i.gco = insertelement <2 x i32> %i.gcn, i32 %..i519, i64 1
  %i.gcp = add <2 x i32> %i.gco, splat (i32 600)
  %i.gcq = srem <2 x i32> %i.gcp, splat (i32 6)   ; 2 uses
  %i.gcr = extractelement <2 x i32> %i.gcq, i64 0
  %i.gcs = sext i32 %i.gcr to i64
  %i.gct = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gcs
  %i.gcu = extractelement <2 x i32> %i.gcq, i64 1
  %i.gcv = sext i32 %i.gcu to i64
  %i.gcw = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.gcv
  %i.gcx = mul nsw i32 %..i519, %i.bo
  %invariant.gep.i520 = getelementptr [4 x i8], ptr %i.axo, i64 %i.gcm
  br label %bb.lm

bb.lm:                                            ; preds = %.loopexit1051.us.i, %.preheader1056.us.i
  %indvar2758 = phi i64 [ %indvar.next2759, %.loopexit1051.us.i ], [ 0, %.preheader1056.us.i ] ; 2 uses
  %indvars.iv1179 = phi i32 [ %indvars.iv.next1180, %.loopexit1051.us.i ], [ %indvars.iv1177, %.preheader1056.us.i ] ; 5 uses
  %indvars.iv1338.i = phi i64 [ %indvars.iv.next1339.i, %.loopexit1051.us.i ], [ %i.gca, %.preheader1056.us.i ] ; 7 uses
  %i.gcy = add i64 %i.gbo, %indvar2758
  %i.gcz = sext i32 %indvars.iv1179 to i64        ; 2 uses
  %smax2760 = call i64 @llvm.smax.i64(i64 %i.gcy, i64 %i.gcz)
  %i.gda = add i64 %smax2760, 1
  %i.gdb = sub i64 %i.gda, %i.gcz                 ; 13 uses
  %i.gdc = sext i32 %indvars.iv1179 to i64        ; 10 uses
  %i.gdd = sub nsw i64 %indvars.iv1338.i, %i.gca
  %i.gde = getelementptr inbounds [12 x i8], ptr %i.gch, i64 %i.gdd ; 7 uses
  %i.gdf = trunc nsw i64 %indvars.iv1338.i to i32 ; 4 uses
  %i.gdg = or i32 %i.gdf, %i.gcj
  %or.cond.us.i521 = icmp sgt i32 %i.gdg, -1
  %i.gdh = icmp slt i64 %indvars.iv1338.i, %i.aoc ; 2 uses
  %or.cond980.us.i = and i1 %i.gdh, %or.cond.us.i521
  %or.cond981.us.i = and i1 %i.gci, %or.cond980.us.i
  %i.gdi = add i32 %i.gdf, 600
  %i.gdj = srem i32 %i.gdi, 6
  %i.gdk = sext i32 %i.gdj to i64
  %i.gdl = getelementptr inbounds i8, ptr %i.gct, i64 %i.gdk
  %i.gdm = load i8, ptr %i.gdl, align 1, !tbaa !133 ; 11 uses
  br i1 %or.cond981.us.i, label %bb.ly, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.gdn = sub i32 %i.apo, %i.gdf
  %i.gdo = tail call i32 @llvm.abs.i32(i32 %i.gdf, i1 true)
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.hzf = fmul reassoc nsz arcp contract afn float %i.hze, f0x3EAAAAAB
  br label %.loopexit1034.us.i.1

.loopexit1034.us.loopexit.i.1:                    ; preds = %.loopexit1034.us.i
  %i.hzg = fmul reassoc nsz arcp contract afn float %i.hyj, 2.000000e+00
  %i.hzh = fadd reassoc nsz arcp contract afn float %i.hyn, %i.hyr
  %i.hzi = fsub reassoc nsz arcp contract afn float %i.hzg, %i.hzh ; 2 uses
  %i.hzj = load float, ptr %i.hyl, align 4, !tbaa !12
  %i.hzk = load float, ptr %i.hyp, align 4, !tbaa !12
  %i.hzl = fadd reassoc nsz arcp contract afn float %i.hzj, %i.hzi
  %i.hzm = fadd reassoc nsz arcp contract afn float %i.hzl, %i.hzk
  %i.hzn = fmul reassoc nsz arcp contract afn float %i.hzm, 5.000000e-01
  %i.hzo = getelementptr inbounds nuw i8, ptr %i.hyl, i64 8
  %i.hzp = load float, ptr %i.hzo, align 4, !tbaa !12
  %i.hzq = getelementptr inbounds nuw i8, ptr %i.hyp, i64 8
  %i.hzr = load float, ptr %i.hzq, align 4, !tbaa !12
  %i.hzs = fadd reassoc nsz arcp contract afn float %i.hzp, %i.hzi
  %i.hzt = fadd reassoc nsz arcp contract afn float %i.hzs, %i.hzr
  %i.hzu = fmul reassoc nsz arcp contract afn float %i.hzt, 5.000000e-01
  br label %.loopexit1034.us.i.1

.loopexit1034.us.i.1:                             ; preds = %.loopexit1034.us.loopexit.i.1, %.loopexit1034.us.loopexit1299.i.1
  %.sink1255.1 = phi float [ %i.hzn, %.loopexit1034.us.loopexit.i.1 ], [ %i.hyy, %.loopexit1034.us.loopexit1299.i.1 ]
  %.sink.i518.1 = phi float [ %i.hzu, %.loopexit1034.us.loopexit.i.1 ], [ %i.hzf, %.loopexit1034.us.loopexit1299.i.1 ]
  store float %.sink1255.1, ptr %i.hya, align 4, !tbaa !12
  %i.hzv = getelementptr inbounds nuw i8, ptr %i.hwa, i64 178616
  store float %.sink.i518.1, ptr %i.hzv, align 4, !tbaa !12
  %i.hzw = getelementptr inbounds nuw i8, ptr %i.hwa, i64 357216 ; 3 uses
  br i1 %i.apa, label %bb.nf, label %.loopexit1039.us.i

bb.nf:                                            ; preds = %.loopexit1034.us.i.1
  %i.hzx = getelementptr inbounds nuw i8, ptr %i.hwf, i64 8
  %i.hzy = load i16, ptr %i.hzx, align 8, !tbaa !481 ; 2 uses
  %i.hzz = sext i16 %i.hzy to i32
  %i.iaa = getelementptr inbounds nuw i8, ptr %i.hwf, i64 10
  %i.iab = load i16, ptr %i.iaa, align 2, !tbaa !481 ; 2 uses
  %i.iac = sext i16 %i.iab to i32
  %i.iad = sub nsw i32 0, %i.iac
  %.not961.us.i.2 = icmp eq i32 %i.hzz, %i.iad
  %i.iae = getelementptr inbounds nuw i8, ptr %i.hwa, i64 357220
  %i.iaf = load float, ptr %i.iae, align 4, !tbaa !12 ; 2 uses
  %i.iag = sext i16 %i.hzy to i64
  %i.iah = getelementptr inbounds [12 x i8], ptr %i.hzw, i64 %i.iag ; 5 uses
  %i.iai = getelementptr inbounds nuw i8, ptr %i.iah, i64 4
  %i.iaj = load float, ptr %i.iai, align 4, !tbaa !12 ; 3 uses
  %i.iak = sext i16 %i.iab to i64
  %i.ial = getelementptr inbounds [12 x i8], ptr %i.hzw, i64 %i.iak ; 5 uses
  %i.iam = getelementptr inbounds nuw i8, ptr %i.ial, i64 4
  %i.ian = load float, ptr %i.iam, align 4, !tbaa !12 ; 2 uses
  br i1 %.not961.us.i.2, label %.loopexit1034.us.loopexit.i.2, label %.loopexit1034.us.loopexit1299.i.2

.loopexit1034.us.loopexit1299.i.2:                ; preds = %bb.nf
  %i.iao = fmul reassoc nsz arcp contract afn float %i.iaf, 3.000000e+00
  %i.iap = fsub reassoc nsz arcp contract afn float %i.iao, %i.ian ; 2 uses
  %i.iaq = load float, ptr %i.iah, align 4, !tbaa !12
  %i.iar = load float, ptr %i.ial, align 4, !tbaa !12
  %reass.add.us.i.2 = fsub reassoc nsz arcp contract afn float %i.iaq, %i.iaj
  %reass.mul.us.i.2 = fmul reassoc nsz arcp contract afn float %reass.add.us.i.2, 2.000000e+00
  %i.ias = fadd reassoc nsz arcp contract afn float %i.iar, %i.iap
  %i.iat = fadd reassoc nsz arcp contract afn float %i.ias, %reass.mul.us.i.2
  %i.iau = fmul reassoc nsz arcp contract afn float %i.iat, f0x3EAAAAAB
  %i.iav = getelementptr inbounds nuw i8, ptr %i.iah, i64 8
  %i.iaw = load float, ptr %i.iav, align 4, !tbaa !12
  %i.iax = getelementptr inbounds nuw i8, ptr %i.ial, i64 8
  %i.iay = load float, ptr %i.iax, align 4, !tbaa !12
  %reass.add.us.1.i.2 = fsub reassoc nsz arcp contract afn float %i.iaw, %i.iaj
  %reass.mul.us.1.i.2 = fmul reassoc nsz arcp contract afn float %reass.add.us.1.i.2, 2.000000e+00
  %i.iaz = fadd reassoc nsz arcp contract afn float %i.iay, %i.iap
  %i.iba = fadd reassoc nsz arcp contract afn float %i.iaz, %reass.mul.us.1.i.2
  %i.ibb = fmul reassoc nsz arcp contract afn float %i.iba, f0x3EAAAAAB
  br label %.loopexit1034.us.i.2

.loopexit1034.us.loopexit.i.2:                    ; preds = %bb.nf
  %i.ibc = fmul reassoc nsz arcp contract afn float %i.iaf, 2.000000e+00
  %i.ibd = fadd reassoc nsz arcp contract afn float %i.iaj, %i.ian
  %i.ibe = fsub reassoc nsz arcp contract afn float %i.ibc, %i.ibd ; 2 uses
  %i.ibf = load float, ptr %i.iah, align 4, !tbaa !12
  %i.ibg = load float, ptr %i.ial, align 4, !tbaa !12
  %i.ibh = fadd reassoc nsz arcp contract afn float %i.ibf, %i.ibe
  %i.ibi = fadd reassoc nsz arcp contract afn float %i.ibh, %i.ibg
  %i.ibj = fmul reassoc nsz arcp contract afn float %i.ibi, 5.000000e-01
  %i.ibk = getelementptr inbounds nuw i8, ptr %i.iah, i64 8
  %i.ibl = load float, ptr %i.ibk, align 4, !tbaa !12
  %i.ibm = getelementptr inbounds nuw i8, ptr %i.ial, i64 8
  %i.ibn = load float, ptr %i.ibm, align 4, !tbaa !12
  %i.ibo = fadd reassoc nsz arcp contract afn float %i.ibl, %i.ibe
  %i.ibp = fadd reassoc nsz arcp contract afn float %i.ibo, %i.ibn
  %i.ibq = fmul reassoc nsz arcp contract afn float %i.ibp, 5.000000e-01
  br label %.loopexit1034.us.i.2

.loopexit1034.us.i.2:                             ; preds = %.loopexit1034.us.loopexit.i.2, %.loopexit1034.us.loopexit1299.i.2
  %.sink1255.2 = phi float [ %i.ibj, %.loopexit1034.us.loopexit.i.2 ], [ %i.iau, %.loopexit1034.us.loopexit1299.i.2 ]
  %.sink.i518.2 = phi float [ %i.ibq, %.loopexit1034.us.loopexit.i.2 ], [ %i.ibb, %.loopexit1034.us.loopexit1299.i.2 ]
  store float %.sink1255.2, ptr %i.hzw, align 4, !tbaa !12
  %i.ibr = getelementptr inbounds nuw i8, ptr %i.hwa, i64 357224
  store float %.sink.i518.2, ptr %i.ibr, align 4, !tbaa !12
  %i.ibs = getelementptr inbounds nuw i8, ptr %i.hwa, i64 535824 ; 3 uses
  br i1 %i.apa, label %bb.ng, label %.loopexit1039.us.i

bb.ng:                                            ; preds = %.loopexit1034.us.i.2
  %i.ibt = getelementptr inbounds nuw i8, ptr %i.hwf, i64 12
  %i.ibu = load i16, ptr %i.ibt, align 4, !tbaa !481 ; 2 uses
  %i.ibv = sext i16 %i.ibu to i32
  %i.ibw = getelementptr inbounds nuw i8, ptr %i.hwf, i64 14
  %i.ibx = load i16, ptr %i.ibw, align 2, !tbaa !481 ; 2 uses
  %i.iby = sext i16 %i.ibx to i32
  %i.ibz = sub nsw i32 0, %i.iby
  %.not961.us.i.3 = icmp eq i32 %i.ibv, %i.ibz
  %i.ica = getelementptr inbounds nuw i8, ptr %i.hwa, i64 535828
  %i.icb = load float, ptr %i.ica, align 4, !tbaa !12 ; 2 uses
  %i.icc = sext i16 %i.ibu to i64
  %i.icd = getelementptr inbounds [12 x i8], ptr %i.ibs, i64 %i.icc ; 5 uses
  %i.ice = getelementptr inbounds nuw i8, ptr %i.icd, i64 4
  %i.icf = load float, ptr %i.ice, align 4, !tbaa !12 ; 3 uses
  %i.icg = sext i16 %i.ibx to i64
  %i.ich = getelementptr inbounds [12 x i8], ptr %i.ibs, i64 %i.icg ; 5 uses
  %i.ici = getelementptr inbounds nuw i8, ptr %i.ich, i64 4
  %i.icj = load float, ptr %i.ici, align 4, !tbaa !12 ; 2 uses
  br i1 %.not961.us.i.3, label %.loopexit1034.us.loopexit.i.3, label %.loopexit1034.us.loopexit1299.i.3

.loopexit1034.us.loopexit1299.i.3:                ; preds = %bb.ng
  %i.ick = fmul reassoc nsz arcp contract afn float %i.icb, 3.000000e+00
  %i.icl = fsub reassoc nsz arcp contract afn float %i.ick, %i.icj ; 2 uses
  %i.icm = load float, ptr %i.icd, align 4, !tbaa !12
  %i.icn = load float, ptr %i.ich, align 4, !tbaa !12
  %reass.add.us.i.3 = fsub reassoc nsz arcp contract afn float %i.icm, %i.icf
  %reass.mul.us.i.3 = fmul reassoc nsz arcp contract afn float %reass.add.us.i.3, 2.000000e+00
  %i.ico = fadd reassoc nsz arcp contract afn float %i.icn, %i.icl
  %i.icp = fadd reassoc nsz arcp contract afn float %i.ico, %reass.mul.us.i.3
  %i.icq = fmul reassoc nsz arcp contract afn float %i.icp, f0x3EAAAAAB
  %i.icr = getelementptr inbounds nuw i8, ptr %i.icd, i64 8
  %i.ics = load float, ptr %i.icr, align 4, !tbaa !12
  %i.ict = getelementptr inbounds nuw i8, ptr %i.ich, i64 8
  %i.icu = load float, ptr %i.ict, align 4, !tbaa !12
  %reass.add.us.1.i.3 = fsub reassoc nsz arcp contract afn float %i.ics, %i.icf
  %reass.mul.us.1.i.3 = fmul reassoc nsz arcp contract afn float %reass.add.us.1.i.3, 2.000000e+00
  %i.icv = fadd reassoc nsz arcp contract afn float %i.icu, %i.icl
  %i.icw = fadd reassoc nsz arcp contract afn float %i.icv, %reass.mul.us.1.i.3
  %i.icx = fmul reassoc nsz arcp contract afn float %i.icw, f0x3EAAAAAB
  br label %.loopexit1034.us.i.3

.loopexit1034.us.loopexit.i.3:                    ; preds = %bb.ng
  %i.icy = fmul reassoc nsz arcp contract afn float %i.icb, 2.000000e+00
  %i.icz = fadd reassoc nsz arcp contract afn float %i.icf, %i.icj
  %i.ida = fsub reassoc nsz arcp contract afn float %i.icy, %i.icz ; 2 uses
  %i.idb = load float, ptr %i.icd, align 4, !tbaa !12
  %i.idc = load float, ptr %i.ich, align 4, !tbaa !12
  %i.idd = fadd reassoc nsz arcp contract afn float %i.idb, %i.ida
  %i.ide = fadd reassoc nsz arcp contract afn float %i.idd, %i.idc
  %i.idf = fmul reassoc nsz arcp contract afn float %i.ide, 5.000000e-01
  %i.idg = getelementptr inbounds nuw i8, ptr %i.icd, i64 8
  %i.idh = load float, ptr %i.idg, align 4, !tbaa !12
  %i.idi = getelementptr inbounds nuw i8, ptr %i.ich, i64 8
  %i.idj = load float, ptr %i.idi, align 4, !tbaa !12
  %i.idk = fadd reassoc nsz arcp contract afn float %i.idh, %i.ida
  %i.idl = fadd reassoc nsz arcp contract afn float %i.idk, %i.idj
  %i.idm = fmul reassoc nsz arcp contract afn float %i.idl, 5.000000e-01
  br label %.loopexit1034.us.i.3

.loopexit1034.us.i.3:                             ; preds = %.loopexit1034.us.loopexit.i.3, %.loopexit1034.us.loopexit1299.i.3
  %.sink1255.3 = phi float [ %i.idf, %.loopexit1034.us.loopexit.i.3 ], [ %i.icq, %.loopexit1034.us.loopexit1299.i.3 ]
  %.sink.i518.3 = phi float [ %i.idm, %.loopexit1034.us.loopexit.i.3 ], [ %i.icx, %.loopexit1034.us.loopexit1299.i.3 ]
  store float %.sink1255.3, ptr %i.ibs, align 4, !tbaa !12
  %i.idn = getelementptr inbounds nuw i8, ptr %i.hwa, i64 535832
  store float %.sink.i518.3, ptr %i.idn, align 4, !tbaa !12
  br label %.loopexit1039.us.i

.loopexit1039.us.i:                               ; preds = %.loopexit1034.us.i.1, %.loopexit1034.us.i.2, %.loopexit1034.us.i.3, %bb.nd
  %indvars.iv.next1424.i = add nsw i64 %indvars.iv1423.i, 1 ; 2 uses
  %i.ido = icmp slt i64 %indvars.iv.next1424.i, %i.hbi
  br i1 %i.ido, label %bb.nd, label %.loopexit1046.us.i

.loopexit1046.us.i:                               ; preds = %.loopexit1039.us.i, %.lr.ph1173.us.i
  %indvars.iv.next1429.i = add nsw i64 %indvars.iv1428.i, 1 ; 2 uses
  %i.idp = icmp slt i64 %indvars.iv.next1429.i, %i.gbi
  br i1 %i.idp, label %.lr.ph1173.us.i, label %._crit_edge1174.us.i

._crit_edge1174.us.i:                             ; preds = %.loopexit1046.us.i, %._crit_edge1162.split.us.i
  %i.idq = add nuw nsw i32 %.08771176.us.i, 1     ; 2 uses
  %exitcond1431.not.i = icmp eq i32 %i.idq, %i.apb
  br i1 %exitcond1431.not.i, label %bb.nh, label %bb.mq

bb.nh:                                            ; preds = %._crit_edge1174.us.i
  %i.idr = sub i32 %i.gcc, %indvars.iv1336.i      ; 4 uses
  %i.ids = sub nsw i32 %i.idr, %i.aps             ; 2 uses
  %i.idt = icmp slt i32 %i.aps, %i.ids
  %i.idu = sub i32 %i.idr, %i.apt                 ; 2 uses
  %i.idv = icmp slt i32 %i.apt, %i.idu
  %i.idw = sext i32 %i.ids to i64
  %i.idx = sext i32 %i.idu to i64                 ; 2 uses
  %i.idy = call i64 @llvm.smax.i64(i64 %i.idx, i64 %i.awk)
  %i.idz = sub nsw i64 %i.idy, %i.aqe             ; 3 uses
  %min.iters.check2740 = icmp ult i64 %i.idz, 8
  %n.vec2742 = and i64 %i.idz, -8                 ; 3 uses
  %i.iea = add i64 %n.vec2742, %i.aqe
  %cmp.n2756 = icmp eq i64 %i.idz, %n.vec2742
  br label %bb.ni

bb.ni:                                            ; preds = %._crit_edge1186.split.us.i, %bb.nh
  %indvars.iv1444.i = phi i64 [ %indvars.iv.next1445.i, %._crit_edge1186.split.us.i ], [ 0, %bb.nh ] ; 5 uses
  %i.ieb = mul i64 %indvars.iv1444.i, 59536       ; 3 uses
  %i.iec = insertelement <2 x i64> poison, i64 %i.ieb, i64 0 ; 2 uses
  %i.ied = shufflevector <2 x i64> %i.iec, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.iee = add <2 x i64> %i.fxr, %i.ied           ; 2 uses
  %i.ief = add i64 %i.ieb, 59536                  ; 2 uses
  br i1 %i.gaw, label %.preheader1045.lr.ph.us.i, label %._crit_edge1181.split.us.i

.preheader1045.lr.ph.us.i:                        ; preds = %bb.ni
  %i.ieg = getelementptr inbounds nuw [178608 x i8], ptr %i.fvz, i64 %indvars.iv1444.i
  br i1 %i.idt, label %.preheader1045.us.i, label %._crit_edge1181.split.us.i

.preheader1045.us.i:                              ; preds = %.preheader1045.lr.ph.us.i, %._crit_edge1179.us.i
  %indvars.iv1435.i = phi i64 [ %indvars.iv.next1436.i, %._crit_edge1179.us.i ], [ %i.aqd, %.preheader1045.lr.ph.us.i ] ; 5 uses
  %i.ieh = getelementptr inbounds nuw [1464 x i8], ptr %i.ieg, i64 %indvars.iv1435.i
  %i.iei = getelementptr inbounds nuw [488 x i8], ptr %i.fwy, i64 %indvars.iv1435.i
  %i.iej = getelementptr inbounds nuw [488 x i8], ptr %i.fxa, i64 %indvars.iv1435.i
  %i.iek = getelementptr inbounds nuw [488 x i8], ptr %i.fxh, i64 %indvars.iv1435.i
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nj, %.preheader1045.us.i
  %indvars.iv1432.i = phi i64 [ %indvars.iv.next1433.i, %bb.nj ], [ %i.aqd, %.preheader1045.us.i ] ; 5 uses
  %i.iel = getelementptr inbounds nuw [12 x i8], ptr %i.ieh, i64 %indvars.iv1432.i ; 4 uses
  %i.iem = load float, ptr %i.iel, align 4, !tbaa !12
  %i.ien = fmul reassoc nsz arcp contract afn float %i.iem, 2.627000e-01
  %i.ieo = getelementptr inbounds nuw i8, ptr %i.iel, i64 4
  %i.iep = load float, ptr %i.ieo, align 4, !tbaa !12
  %i.ieq = fmul reassoc nsz arcp contract afn float %i.iep, f0x3F2D9168
  %i.ier = fadd reassoc nsz arcp contract afn float %i.ieq, %i.ien
  %i.ies = getelementptr inbounds nuw i8, ptr %i.iel, i64 8 ; 2 uses
  %i.iet = load float, ptr %i.ies, align 4, !tbaa !12
  %i.ieu = fmul reassoc nsz arcp contract afn float %i.iet, 5.930000e-02
  %i.iev = fadd reassoc nsz arcp contract afn float %i.ier, %i.ieu ; 3 uses
  %i.iew = getelementptr inbounds nuw [4 x i8], ptr %i.iei, i64 %indvars.iv1432.i
  store float %i.iev, ptr %i.iew, align 4, !tbaa !12
  %i.iex = load float, ptr %i.ies, align 4, !tbaa !12
  %i.iey = fsub reassoc nsz arcp contract afn float %i.iex, %i.iev
  %i.iez = fmul reassoc nsz arcp contract afn float %i.iey, 5.643300e-01
  %i.ifa = getelementptr inbounds nuw [4 x i8], ptr %i.iej, i64 %indvars.iv1432.i
  store float %i.iez, ptr %i.ifa, align 4, !tbaa !12
  %i.ifb = load float, ptr %i.iel, align 4, !tbaa !12
  %i.ifc = fsub reassoc nsz arcp contract afn float %i.ifb, %i.iev
  %i.ifd = fmul reassoc nsz arcp contract afn float %i.ifc, f0x3F2D9B3D
  %i.ife = getelementptr inbounds nuw [4 x i8], ptr %i.iek, i64 %indvars.iv1432.i
  store float %i.ifd, ptr %i.ife, align 4, !tbaa !12
  %indvars.iv.next1433.i = add nuw nsw i64 %indvars.iv1432.i, 1 ; 2 uses
  %i.iff = icmp slt i64 %indvars.iv.next1433.i, %i.idw
  br i1 %i.iff, label %bb.nj, label %._crit_edge1179.us.i

._crit_edge1179.us.i:                             ; preds = %bb.nj
  %indvars.iv.next1436.i = add nuw nsw i64 %indvars.iv1435.i, 1 ; 2 uses
  %i.ifg = icmp slt i64 %indvars.iv.next1436.i, %i.gbj
  br i1 %i.ifg, label %.preheader1045.us.i, label %._crit_edge1181.split.us.i

._crit_edge1181.split.us.i:                       ; preds = %._crit_edge1179.us.i, %.preheader1045.lr.ph.us.i, %bb.ni
  %i.ifh = and i64 %indvars.iv1444.i, 3
  %i.ifi = getelementptr inbounds nuw [2 x i8], ptr @xtrans_markesteijn_interpolate.dir, i64 %i.ifh
  %i.ifj = load i16, ptr %i.ifi, align 2, !tbaa !481
  %i.ifk = sext i16 %i.ifj to i64                 ; 8 uses
  br i1 %i.gay, label %.preheader1044.lr.ph.us.i, label %._crit_edge1186.split.us.i

.preheader1044.lr.ph.us.i:                        ; preds = %._crit_edge1181.split.us.i
  %i.ifl = sub nsw i64 0, %i.ifk                  ; 6 uses
  %i.ifm = getelementptr inbounds nuw [59536 x i8], ptr %i.fwz, i64 %indvars.iv1444.i
  br i1 %i.idv, label %.preheader1044.us.i.preheader, label %._crit_edge1186.split.us.i

.preheader1044.us.i.preheader:                    ; preds = %.preheader1044.lr.ph.us.i
  %i.ifn = shl nsw i64 %i.ifk, 2                  ; 6 uses
  %i.ifo = add i64 %i.fxp, %i.ifn
  %.neg = sub i64 %i.ifn, %i.fxq
  %42 = insertelement <2 x i64> poison, i64 %.neg, i64 0
  %43 = insertelement <2 x i64> %42, i64 %i.ifn, i64 1
  %44 = add <2 x i64> %43, %i.iee
  %45 = add i64 %i.ief, %i.ifn
  %46 = insertelement <4 x i64> poison, i64 %i.ieb, i64 0
  %i.ifp = insertelement <2 x i64> %i.iec, i64 %45, i64 1
  %i.ifq = insertelement <2 x i64> poison, i64 %i.ifo, i64 0
  %47 = insertelement <2 x i64> %i.ifq, i64 %i.ifn, i64 1
  %48 = shufflevector <2 x i64> %44, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %49 = sub <2 x i64> %47, %i.iee
  %50 = add <2 x i64> %i.ifp, <i64 59535, i64 -1>
  %i.ifr = sub i64 %i.ifn, %i.ief
  %diff.check2735 = icmp ugt i64 %i.ifr, -32
  %i.ifs = icmp ugt <2 x i64> %49, splat (i64 -32)
  %51 = shufflevector <4 x i64> %46, <4 x i64> %48, <6 x i32> <i32 0, i32 4, i32 0, i32 6, i32 poison, i32 poison>
  %52 = add <6 x i64> %51, <i64 178607, i64 -1, i64 119071, i64 -1, i64 poison, i64 poison>
  %53 = shufflevector <2 x i64> %50, <2 x i64> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <6 x i64> %52, <6 x i64> %53, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %i.ift = icmp ult <6 x i64> %54, splat (i64 31)
  %i.ifu = shufflevector <6 x i1> %i.ift, <6 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ifv = shufflevector <2 x i1> %i.ifs, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ifw = shufflevector <8 x i1> %i.ifu, <8 x i1> %i.ifv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ifx = bitcast <8 x i1> %i.ifw to i8
  %i.ify = icmp ne i8 %i.ifx, 0
  %op.rdx4578.a = or i1 %i.ify, %diff.check2735
  br label %.preheader1044.us.i

.preheader1044.us.i:                              ; preds = %.preheader1044.us.i.preheader, %._crit_edge1184.us.i
  %indvars.iv1441.i = phi i64 [ %indvars.iv.next1442.i, %._crit_edge1184.us.i ], [ %i.aqe, %.preheader1044.us.i.preheader ] ; 3 uses
  %i.ifz = getelementptr inbounds nuw [488 x i8], ptr %i.fwy, i64 %indvars.iv1441.i ; 2 uses
  %i.iga = getelementptr inbounds nuw [488 x i8], ptr %i.ifm, i64 %indvars.iv1441.i ; 2 uses
  %brmerge4863 = select i1 %min.iters.check2740, i1 true, i1 %op.rdx4578.a
  br i1 %brmerge4863, label %scalar.ph2739.preheader, label %vector.body2743

vector.body2743:                                  ; preds = %.preheader1044.us.i, %vector.body2743
  %index2744 = phi i64 [ %index.next2754, %vector.body2743 ], [ 0, %.preheader1044.us.i ] ; 2 uses
  %i.igb = add nuw i64 %index2744, %i.aqe         ; 2 uses
  %i.igc = getelementptr inbounds nuw [4 x i8], ptr %i.ifz, i64 %i.igb ; 5 uses
  %wide.load2745 = load <8 x float>, ptr %i.igc, align 4, !tbaa !12
  %i.igd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2745, splat (float 2.000000e+00)
  %i.ige = getelementptr inbounds [4 x i8], ptr %i.igc, i64 %i.ifk
  %wide.load2746 = load <8 x float>, ptr %i.ige, align 4, !tbaa !12
  %i.igf = getelementptr inbounds [4 x i8], ptr %i.igc, i64 %i.ifl
  %wide.load2747 = load <8 x float>, ptr %i.igf, align 4, !tbaa !12
  %i.igg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2746, %wide.load2747
  %i.igh = fsub reassoc nsz arcp contract afn <8 x float> %i.igd, %i.igg ; 2 uses
  %i.igi = fmul reassoc nsz arcp contract afn <8 x float> %i.igh, %i.igh
  %i.igj = getelementptr inbounds nuw i8, ptr %i.igc, i64 59536 ; 3 uses
  %wide.load2748 = load <8 x float>, ptr %i.igj, align 4, !tbaa !12
  %i.igk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2748, splat (float 2.000000e+00)
  %i.igl = getelementptr inbounds [4 x i8], ptr %i.igj, i64 %i.ifk
  %wide.load2749 = load <8 x float>, ptr %i.igl, align 4, !tbaa !12
  %i.igm = getelementptr inbounds [4 x i8], ptr %i.igj, i64 %i.ifl
  %wide.load2750 = load <8 x float>, ptr %i.igm, align 4, !tbaa !12
  %i.ign = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2749, %wide.load2750
  %i.igo = fsub reassoc nsz arcp contract afn <8 x float> %i.igk, %i.ign ; 2 uses
  %i.igp = fmul reassoc nsz arcp contract afn <8 x float> %i.igo, %i.igo
  %i.igq = fadd reassoc nsz arcp contract afn <8 x float> %i.igp, %i.igi
  %i.igr = getelementptr inbounds nuw i8, ptr %i.igc, i64 119072 ; 3 uses
  %wide.load2751 = load <8 x float>, ptr %i.igr, align 4, !tbaa !12
  %i.igs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2751, splat (float 2.000000e+00)
  %i.igt = getelementptr inbounds [4 x i8], ptr %i.igr, i64 %i.ifk
  %wide.load2752 = load <8 x float>, ptr %i.igt, align 4, !tbaa !12
  %i.igu = getelementptr inbounds [4 x i8], ptr %i.igr, i64 %i.ifl
  %wide.load2753 = load <8 x float>, ptr %i.igu, align 4, !tbaa !12
  %i.igv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2752, %wide.load2753
  %i.igw = fsub reassoc nsz arcp contract afn <8 x float> %i.igs, %i.igv ; 2 uses
  %i.igx = fmul reassoc nsz arcp contract afn <8 x float> %i.igw, %i.igw
  %i.igy = fadd reassoc nsz arcp contract afn <8 x float> %i.igq, %i.igx
  %i.igz = getelementptr inbounds nuw [4 x i8], ptr %i.iga, i64 %i.igb
  store <8 x float> %i.igy, ptr %i.igz, align 4, !tbaa !12
  %index.next2754 = add nuw i64 %index2744, 8     ; 2 uses
  %i.iha = icmp eq i64 %index.next2754, %n.vec2742
  br i1 %i.iha, label %middle.block2755, label %vector.body2743, !llvm.loop !235

middle.block2755:                                 ; preds = %vector.body2743
  br i1 %cmp.n2756, label %._crit_edge1184.us.i, label %scalar.ph2739.preheader

scalar.ph2739.preheader:                          ; preds = %.preheader1044.us.i, %middle.block2755
  %indvars.iv1438.i.ph = phi i64 [ %i.iea, %middle.block2755 ], [ %i.aqe, %.preheader1044.us.i ]
  br label %scalar.ph2739

scalar.ph2739:                                    ; preds = %scalar.ph2739.preheader, %scalar.ph2739
  %indvars.iv1438.i = phi i64 [ %indvars.iv.next1439.i, %scalar.ph2739 ], [ %indvars.iv1438.i.ph, %scalar.ph2739.preheader ] ; 3 uses
  %i.ihb = getelementptr inbounds nuw [4 x i8], ptr %i.ifz, i64 %indvars.iv1438.i ; 5 uses
  %i.ihc = load float, ptr %i.ihb, align 4, !tbaa !12
  %i.ihd = fmul reassoc nsz arcp contract afn float %i.ihc, 2.000000e+00
  %i.ihe = getelementptr inbounds [4 x i8], ptr %i.ihb, i64 %i.ifk
  %i.ihf = load float, ptr %i.ihe, align 4, !tbaa !12
  %i.ihg = getelementptr inbounds [4 x i8], ptr %i.ihb, i64 %i.ifl
  %i.ihh = load float, ptr %i.ihg, align 4, !tbaa !12
  %i.ihi = fadd reassoc nsz arcp contract afn float %i.ihf, %i.ihh
  %i.ihj = fsub reassoc nsz arcp contract afn float %i.ihd, %i.ihi ; 2 uses
  %i.ihk = fmul reassoc nsz arcp contract afn float %i.ihj, %i.ihj
  %i.ihl = getelementptr inbounds nuw i8, ptr %i.ihb, i64 59536 ; 3 uses
  %i.ihm = load float, ptr %i.ihl, align 4, !tbaa !12
  %i.ihn = fmul reassoc nsz arcp contract afn float %i.ihm, 2.000000e+00
  %i.iho = getelementptr inbounds [4 x i8], ptr %i.ihl, i64 %i.ifk
  %i.ihp = load float, ptr %i.iho, align 4, !tbaa !12
  %i.ihq = getelementptr inbounds [4 x i8], ptr %i.ihl, i64 %i.ifl
  %i.ihr = load float, ptr %i.ihq, align 4, !tbaa !12
  %i.ihs = fadd reassoc nsz arcp contract afn float %i.ihp, %i.ihr
  %i.iht = fsub reassoc nsz arcp contract afn float %i.ihn, %i.ihs ; 2 uses
  %i.ihu = fmul reassoc nsz arcp contract afn float %i.iht, %i.iht
  %i.ihv = fadd reassoc nsz arcp contract afn float %i.ihu, %i.ihk
  %i.ihw = getelementptr inbounds nuw i8, ptr %i.ihb, i64 119072 ; 3 uses
  %i.ihx = load float, ptr %i.ihw, align 4, !tbaa !12
  %i.ihy = fmul reassoc nsz arcp contract afn float %i.ihx, 2.000000e+00
  %i.ihz = getelementptr inbounds [4 x i8], ptr %i.ihw, i64 %i.ifk
  %i.iia = load float, ptr %i.ihz, align 4, !tbaa !12
  %i.iib = getelementptr inbounds [4 x i8], ptr %i.ihw, i64 %i.ifl
  %i.iic = load float, ptr %i.iib, align 4, !tbaa !12
  %i.iid = fadd reassoc nsz arcp contract afn float %i.iia, %i.iic
  %i.iie = fsub reassoc nsz arcp contract afn float %i.ihy, %i.iid ; 2 uses
  %i.iif = fmul reassoc nsz arcp contract afn float %i.iie, %i.iie
  %i.iig = fadd reassoc nsz arcp contract afn float %i.ihv, %i.iif
  %i.iih = getelementptr inbounds nuw [4 x i8], ptr %i.iga, i64 %indvars.iv1438.i
  store float %i.iig, ptr %i.iih, align 4, !tbaa !12
  %indvars.iv.next1439.i = add nuw nsw i64 %indvars.iv1438.i, 1 ; 2 uses
  %i.iii = icmp slt i64 %indvars.iv.next1439.i, %i.idx
  br i1 %i.iii, label %scalar.ph2739, label %._crit_edge1184.us.i, !llvm.loop !236

._crit_edge1184.us.i:                             ; preds = %scalar.ph2739, %middle.block2755
  %indvars.iv.next1442.i = add nuw nsw i64 %indvars.iv1441.i, 1 ; 2 uses
  %i.iij = icmp slt i64 %indvars.iv.next1442.i, %i.gbk
  br i1 %i.iij, label %.preheader1044.us.i, label %._crit_edge1186.split.us.i

._crit_edge1186.split.us.i:                       ; preds = %._crit_edge1184.us.i, %.preheader1044.lr.ph.us.i, %._crit_edge1181.split.us.i
  %indvars.iv.next1445.i = add nuw nsw i64 %indvars.iv1444.i, 1 ; 2 uses
  %exitcond1447.not.i = icmp eq i64 %indvars.iv.next1445.i, %i.aqb
  br i1 %exitcond1447.not.i, label %bb.nk, label %bb.ni

bb.nk:                                            ; preds = %._crit_edge1186.split.us.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(59536) %i.fwy, i8 0, i64 %i.apj, i1 false)
  br i1 %i.gba, label %.preheader1054.lr.ph.us.i, label %.preheader1058.us.i

.preheader1054.lr.ph.us.i:                        ; preds = %bb.nk
  %i.iik = sub nsw i32 %i.idr, %i.apu             ; 2 uses
  %i.iil = icmp slt i32 %i.apu, %i.iik
  br i1 %i.iil, label %.preheader1054.us.preheader.i, label %.preheader1058.us.i

.preheader1054.us.preheader.i:                    ; preds = %.preheader1054.lr.ph.us.i
  %i.iim = zext nneg i32 %i.iik to i64
  %i.iin = getelementptr i8, ptr %i.fxw, i64 %umax2630
  %i.iio = getelementptr i8, ptr %i.fyc, i64 %i.gbv
  %i.iip = getelementptr i8, ptr %i.fyh, i64 %i.gbv
  %i.iiq = getelementptr i8, ptr %i.fym, i64 %i.gbv
  %i.iir = getelementptr i8, ptr %i.fyr, i64 %i.gbv
  %i.iis = getelementptr i8, ptr %i.fyw, i64 %i.gbv
  %i.iit = getelementptr i8, ptr %i.fzb, i64 %i.gbv
  %i.iiu = getelementptr i8, ptr %i.fzg, i64 %i.gbv
  %i.iiv = getelementptr i8, ptr %i.fzl, i64 %i.gbv
  %i.iiw = getelementptr i8, ptr %i.fzq, i64 %i.gbv
  br label %.preheader1054.us.i

.preheader1054.us.i:                              ; preds = %._crit_edge1206.us.i, %.preheader1054.us.preheader.i
  %indvar2624 = phi i64 [ %indvar.next2625, %._crit_edge1206.us.i ], [ 0, %.preheader1054.us.preheader.i ] ; 3 uses
  %indvars.iv1467.i = phi i64 [ %i.iiz, %._crit_edge1206.us.i ], [ %i.aqf, %.preheader1054.us.preheader.i ] ; 5 uses
  %i.iix = mul nuw nsw i64 %indvar2624, 122       ; 2 uses
  %scevgep2626 = getelementptr i8, ptr %i.fxt, i64 %i.iix ; 9 uses
  %scevgep2631 = getelementptr i8, ptr %i.iin, i64 %i.iix ; 9 uses
  %i.iiy = mul nuw nsw i64 %indvar2624, 488       ; 18 uses
  %scevgep2632 = getelementptr i8, ptr %i.fxz, i64 %i.iiy
  %scevgep2633 = getelementptr i8, ptr %i.iio, i64 %i.iiy
  %scevgep2634 = getelementptr i8, ptr %i.fye, i64 %i.iiy
  %scevgep2635 = getelementptr i8, ptr %i.iip, i64 %i.iiy
  %scevgep2636 = getelementptr i8, ptr %i.fyj, i64 %i.iiy
  %scevgep2637 = getelementptr i8, ptr %i.iiq, i64 %i.iiy
  %scevgep2638 = getelementptr i8, ptr %i.fyo, i64 %i.iiy
  %scevgep2639 = getelementptr i8, ptr %i.iir, i64 %i.iiy
  %scevgep2640 = getelementptr i8, ptr %i.fyt, i64 %i.iiy
  %scevgep2641 = getelementptr i8, ptr %i.iis, i64 %i.iiy
  %scevgep2642 = getelementptr i8, ptr %i.fyy, i64 %i.iiy
  %scevgep2643 = getelementptr i8, ptr %i.iit, i64 %i.iiy
  %scevgep2644 = getelementptr i8, ptr %i.fzd, i64 %i.iiy
  %scevgep2645 = getelementptr i8, ptr %i.iiu, i64 %i.iiy
  %scevgep2646 = getelementptr i8, ptr %i.fzi, i64 %i.iiy
  %scevgep2647 = getelementptr i8, ptr %i.iiv, i64 %i.iiy
  %scevgep2648 = getelementptr i8, ptr %i.fzn, i64 %i.iiy
  %scevgep2649 = getelementptr i8, ptr %i.iiw, i64 %i.iiy
  %invariant.gep1188.us.i = getelementptr inbounds nuw [488 x i8], ptr %i.fwz, i64 %indvars.iv1467.i
  %invariant.gep1200.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.fwy, i64 %indvars.iv1467.i
  %i.iiz = add nuw nsw i64 %indvars.iv1467.i, 1   ; 4 uses
  %bound02650 = icmp ult ptr %scevgep2626, %scevgep2633
  %bound12651 = icmp ult ptr %scevgep2632, %scevgep2631
  %found.conflict2652 = and i1 %bound02650, %bound12651
  %bound02653 = icmp ult ptr %scevgep2626, %scevgep2635
  %bound12654 = icmp ult ptr %scevgep2634, %scevgep2631
  %found.conflict2655 = and i1 %bound02653, %bound12654
  %conflict.rdx2656 = or i1 %found.conflict2652, %found.conflict2655
  %bound02657 = icmp ult ptr %scevgep2626, %scevgep2637
  %bound12658 = icmp ult ptr %scevgep2636, %scevgep2631
  %found.conflict2659 = and i1 %bound02657, %bound12658
  %conflict.rdx2660 = or i1 %conflict.rdx2656, %found.conflict2659
  %bound02661 = icmp ult ptr %scevgep2626, %scevgep2639
  %bound12662 = icmp ult ptr %scevgep2638, %scevgep2631
  %found.conflict2663 = and i1 %bound02661, %bound12662
  %conflict.rdx2664 = or i1 %conflict.rdx2660, %found.conflict2663
  %bound02665 = icmp ult ptr %scevgep2626, %scevgep2641
  %bound12666 = icmp ult ptr %scevgep2640, %scevgep2631
  %found.conflict2667 = and i1 %bound02665, %bound12666
  %conflict.rdx2668 = or i1 %conflict.rdx2664, %found.conflict2667
  %bound02669 = icmp ult ptr %scevgep2626, %scevgep2643
  %bound12670 = icmp ult ptr %scevgep2642, %scevgep2631
  %found.conflict2671 = and i1 %bound02669, %bound12670
  %conflict.rdx2672 = or i1 %conflict.rdx2668, %found.conflict2671
  %bound02673 = icmp ult ptr %scevgep2626, %scevgep2645
  %bound12674 = icmp ult ptr %scevgep2644, %scevgep2631
  %found.conflict2675 = and i1 %bound02673, %bound12674
  %conflict.rdx2676 = or i1 %conflict.rdx2672, %found.conflict2675
  %bound02677 = icmp ult ptr %scevgep2626, %scevgep2647
  %bound12678 = icmp ult ptr %scevgep2646, %scevgep2631
  %found.conflict2679 = and i1 %bound02677, %bound12678
  %conflict.rdx2680 = or i1 %conflict.rdx2676, %found.conflict2679
  %bound02681 = icmp ult ptr %scevgep2626, %scevgep2649
  %bound12682 = icmp ult ptr %scevgep2648, %scevgep2631
  %found.conflict2683 = and i1 %bound02681, %bound12682
  %conflict.rdx2684 = or i1 %conflict.rdx2680, %found.conflict2683
  br label %.preheader1043.us.i
end_hunk_2
begin_hunk_3_@process:bb.a
  store i8 %i.imb, ptr %i.iko, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imc = extractelement <8 x i8> %i.ilu, i64 7
  store i8 %i.imc, ptr %i.ikq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2701 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2696, i64 %i.ikb
  %wide.masked.gather2702 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2701, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !492
  %i.imd = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2702, %broadcast.splat2690
  %i.ime = zext <8 x i1> %i.imd to <8 x i8>
  %i.imf = add <8 x i8> %i.ilu, %i.ime            ; 9 uses
  %i.img = extractelement <8 x i8> %i.imf, i64 0
  store i8 %i.img, ptr %i.ikc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imh = extractelement <8 x i8> %i.imf, i64 1
  store i8 %i.imh, ptr %i.ike, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imi = extractelement <8 x i8> %i.imf, i64 2
  store i8 %i.imi, ptr %i.ikg, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imj = extractelement <8 x i8> %i.imf, i64 3
  store i8 %i.imj, ptr %i.iki, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imk = extractelement <8 x i8> %i.imf, i64 4
  store i8 %i.imk, ptr %i.ikk, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.iml = extractelement <8 x i8> %i.imf, i64 5
  store i8 %i.iml, ptr %i.ikm, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imm = extractelement <8 x i8> %i.imf, i64 6
  store i8 %i.imm, ptr %i.iko, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imn = extractelement <8 x i8> %i.imf, i64 7
  store i8 %i.imn, ptr %i.ikq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2703 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep2695, i64 %i.ika
  %wide.masked.gather2704 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2703, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !493
  %i.imo = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2704, %broadcast.splat2690
  %i.imp = zext <8 x i1> %i.imo to <8 x i8>
  %i.imq = add <8 x i8> %i.imf, %i.imp
  %wide.gep2705 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2695, i64 %indvars.iv1464.i
  %wide.masked.gather2706 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2705, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !494
  %i.imr = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2706, %broadcast.splat2690
  %i.ims = zext <8 x i1> %i.imr to <8 x i8>
  %i.imt = add <8 x i8> %i.imq, %i.ims
  %wide.gep2707 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2695, i64 %i.ikb
  %wide.masked.gather2708 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2707, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !495
  %i.imu = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2708, %broadcast.splat2690
  %i.imv = zext <8 x i1> %i.imu to <8 x i8>
  %i.imw = add <8 x i8> %i.imt, %i.imv            ; 9 uses
  %i.imx = extractelement <8 x i8> %i.imw, i64 0
  store i8 %i.imx, ptr %i.ikc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imy = extractelement <8 x i8> %i.imw, i64 1
  store i8 %i.imy, ptr %i.ike, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.imz = extractelement <8 x i8> %i.imw, i64 2
  store i8 %i.imz, ptr %i.ikg, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ina = extractelement <8 x i8> %i.imw, i64 3
  store i8 %i.ina, ptr %i.iki, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inb = extractelement <8 x i8> %i.imw, i64 4
  store i8 %i.inb, ptr %i.ikk, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inc = extractelement <8 x i8> %i.imw, i64 5
  store i8 %i.inc, ptr %i.ikm, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ind = extractelement <8 x i8> %i.imw, i64 6
  store i8 %i.ind, ptr %i.iko, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ine = extractelement <8 x i8> %i.imw, i64 7
  store i8 %i.ine, ptr %i.ikq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %wide.gep2709 = getelementptr inbounds nuw [488 x i8], <8 x ptr> %wide.gep2694, i64 %i.iiz ; 3 uses
  %wide.gep2710 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep2709, i64 %i.ika
  %wide.masked.gather2711 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2710, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !496
  %i.inf = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2711, %broadcast.splat2690
  %i.ing = zext <8 x i1> %i.inf to <8 x i8>
  %i.inh = add <8 x i8> %i.imw, %i.ing
  %wide.gep2712 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2709, i64 %indvars.iv1464.i
  %wide.masked.gather2713 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2712, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !497
  %i.ini = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2713, %broadcast.splat2690
  %i.inj = zext <8 x i1> %i.ini to <8 x i8>
  %i.ink = add <8 x i8> %i.inh, %i.inj
  %wide.gep2714 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep2709, i64 %i.ikb
  %wide.masked.gather2715 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep2714, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !498
  %i.inl = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.masked.gather2715, %broadcast.splat2690
  %i.inm = zext <8 x i1> %i.inl to <8 x i8>
  %i.inn = add <8 x i8> %i.ink, %i.inm            ; 8 uses
  %i.ino = extractelement <8 x i8> %i.inn, i64 0
  store i8 %i.ino, ptr %i.ikc, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inp = extractelement <8 x i8> %i.inn, i64 1
  store i8 %i.inp, ptr %i.ike, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inq = extractelement <8 x i8> %i.inn, i64 2
  store i8 %i.inq, ptr %i.ikg, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inr = extractelement <8 x i8> %i.inn, i64 3
  store i8 %i.inr, ptr %i.iki, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.ins = extractelement <8 x i8> %i.inn, i64 4
  store i8 %i.ins, ptr %i.ikk, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.int = extractelement <8 x i8> %i.inn, i64 5
  store i8 %i.int, ptr %i.ikm, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inu = extractelement <8 x i8> %i.inn, i64 6
  store i8 %i.inu, ptr %i.iko, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %i.inv = extractelement <8 x i8> %i.inn, i64 7
  store i8 %i.inv, ptr %i.ikq, align 1, !tbaa !133, !alias.scope !488, !noalias !489
  %index.next2716 = add nuw i64 %index2692, 8     ; 2 uses
  %vec.ind.next2717 = add nuw nsw <8 x i64> %vec.ind2693, splat (i64 8)
  %i.inw = icmp eq i64 %index.next2716, %n.vec2688
  br i1 %i.inw, label %middle.block2718, label %vector.body2691, !llvm.loop !249

.preheader1038.us.i:                              ; preds = %.epilog-lcssa, %.preheader1038.us.i
  %indvars.iv1459.i = phi i64 [ %indvars.iv.next1460.i, %.preheader1038.us.i ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.inx = getelementptr inbounds nuw [59536 x i8], ptr %i.fwz, i64 %indvars.iv1459.i ; 2 uses
  %gep1203.us.i = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1202.us.i, i64 %indvars.iv1459.i ; 6 uses
  %.promoted1195.us.i = load i8, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iny = getelementptr [488 x i8], ptr %i.inx, i64 %indvars.iv1467.i ; 4 uses
  %i.inz = getelementptr i8, ptr %i.iny, i64 -488 ; 3 uses
  %i.ioa = getelementptr inbounds [4 x i8], ptr %i.inz, i64 %i.ika
  %i.iob = load float, ptr %i.ioa, align 4, !tbaa !12
  %i.ioc = fcmp reassoc nsz arcp contract afn ole float %i.iob, %i.ijz
  %i.iod = zext i1 %i.ioc to i8
  %i.ioe = add i8 %.promoted1195.us.i, %i.iod     ; 2 uses
  store i8 %i.ioe, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iof = getelementptr inbounds nuw [4 x i8], ptr %i.inz, i64 %indvars.iv1464.i
  %i.iog = load float, ptr %i.iof, align 4, !tbaa !12
  %i.ioh = fcmp reassoc nsz arcp contract afn ole float %i.iog, %i.ijz
  %i.ioi = zext i1 %i.ioh to i8
  %i.ioj = add i8 %i.ioe, %i.ioi                  ; 2 uses
  store i8 %i.ioj, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iok = getelementptr inbounds nuw [4 x i8], ptr %i.inz, i64 %i.ikb
  %i.iol = load float, ptr %i.iok, align 4, !tbaa !12
  %i.iom = fcmp reassoc nsz arcp contract afn ole float %i.iol, %i.ijz
  %i.ion = zext i1 %i.iom to i8
  %i.ioo = add i8 %i.ioj, %i.ion                  ; 2 uses
  store i8 %i.ioo, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.iop = getelementptr inbounds [4 x i8], ptr %i.iny, i64 %i.ika
  %i.ioq = load float, ptr %i.iop, align 4, !tbaa !12
  %i.ior = fcmp reassoc nsz arcp contract afn ole float %i.ioq, %i.ijz
  %i.ios = zext i1 %i.ior to i8
  %i.iot = add i8 %i.ioo, %i.ios
  %i.iou = getelementptr inbounds nuw [4 x i8], ptr %i.iny, i64 %indvars.iv1464.i
  %i.iov = load float, ptr %i.iou, align 4, !tbaa !12
  %i.iow = fcmp reassoc nsz arcp contract afn ole float %i.iov, %i.ijz
  %i.iox = zext i1 %i.iow to i8
  %i.ioy = add i8 %i.iot, %i.iox
  %i.ioz = getelementptr inbounds nuw [4 x i8], ptr %i.iny, i64 %i.ikb
  %i.ipa = load float, ptr %i.ioz, align 4, !tbaa !12
  %i.ipb = fcmp reassoc nsz arcp contract afn ole float %i.ipa, %i.ijz
  %i.ipc = zext i1 %i.ipb to i8
  %i.ipd = add i8 %i.ioy, %i.ipc                  ; 2 uses
  store i8 %i.ipd, ptr %gep1203.us.i, align 1, !tbaa !133
  %i.ipe = getelementptr inbounds nuw [488 x i8], ptr %i.inx, i64 %i.iiz ; 3 uses
  %i.ipf = getelementptr inbounds [4 x i8], ptr %i.ipe, i64 %i.ika
  %i.ipg = load float, ptr %i.ipf, align 4, !tbaa !12
  %i.iph = fcmp reassoc nsz arcp contract afn ole float %i.ipg, %i.ijz
  %i.ipi = zext i1 %i.iph to i8
  %i.ipj = add i8 %i.ipd, %i.ipi
  %i.ipk = getelementptr inbounds nuw [4 x i8], ptr %i.ipe, i64 %indvars.iv1464.i
  %i.ipl = load float, ptr %i.ipk, align 4, !tbaa !12
  %i.ipm = fcmp reassoc nsz arcp contract afn ole float %i.ipl, %i.ijz
  %i.ipn = zext i1 %i.ipm to i8
  %i.ipo = add i8 %i.ipj, %i.ipn
  %i.ipp = getelementptr inbounds nuw [4 x i8], ptr %i.ipe, i64 %i.ikb
  %i.ipq = load float, ptr %i.ipp, align 4, !tbaa !12
  %i.ipr = fcmp reassoc nsz arcp contract afn ole float %i.ipq, %i.ijz
  %i.ips = zext i1 %i.ipr to i8
  %i.ipt = add i8 %i.ipo, %i.ips
  store i8 %i.ipt, ptr %gep1203.us.i, align 1, !tbaa !133
  %indvars.iv.next1460.i = add nuw nsw i64 %indvars.iv1459.i, 1 ; 2 uses
  %exitcond1463.not.i = icmp eq i64 %indvars.iv.next1460.i, %i.aqb
  br i1 %exitcond1463.not.i, label %middle.block2718, label %.preheader1038.us.i, !llvm.loop !250

middle.block2718:                                 ; preds = %vector.body2691, %.preheader1038.us.i
  %i.ipu = icmp samesign ult i64 %i.ikb, %i.iim
  br i1 %i.ipu, label %.preheader1043.us.i, label %._crit_edge1206.us.i

._crit_edge1206.us.i:                             ; preds = %middle.block2718
  %i.ipv = icmp slt i64 %i.iiz, %i.gbl
  %indvar.next2625 = add i64 %indvar2624, 1
  br i1 %i.ipv, label %.preheader1054.us.i, label %.preheader1058.us.i

.preheader1058.us.i:                              ; preds = %._crit_edge1206.us.i, %.preheader1054.lr.ph.us.i, %bb.nk
  %i.ipw = sub nsw i32 %i.idr, %i.aph             ; 4 uses
  br i1 %i.gbc, label %.preheader1053.us.preheader.i, label %._crit_edge1241.split.us.i

.preheader1053.us.preheader.i:                    ; preds = %.preheader1058.us.i
  %i.ipx = icmp slt i32 %i.apw, %i.ipw
  %i.ipy = sext i32 %i.ipw to i64
  br i1 %i.ipx, label %.preheader1053.us.i.us, label %.preheader1053.us.i

.preheader1053.us.i.us:                           ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit.us
  %indvars.iv1482.i.us = phi i64 [ %indvars.iv.next1483.i.us, %._crit_edge1216.us.i.loopexit.us ], [ 0, %.preheader1053.us.preheader.i ] ; 4 uses
  %i.ipz = mul i64 %indvars.iv1482.i.us, 14884
  %i.iqa = getelementptr inbounds nuw [14884 x i8], ptr %i.fxb, i64 %indvars.iv1482.i.us
  %i.iqb = getelementptr inbounds nuw [14884 x i8], ptr %i.fwy, i64 %indvars.iv1482.i.us
  %i.iqc = getelementptr i8, ptr %i.fzt, i64 %i.ipz
  br label %.preheader1037.lr.ph.us.us.i.us

.preheader1037.lr.ph.us.us.i.us:                  ; preds = %.preheader1053.us.i.us, %._crit_edge1213.us.us.i.us
  %indvar4524 = phi i64 [ 0, %.preheader1053.us.i.us ], [ %indvar.next4525, %._crit_edge1213.us.us.i.us ] ; 2 uses
  %indvars.iv1479.i.us = phi i64 [ %i.apv, %.preheader1053.us.i.us ], [ %i.iqh, %._crit_edge1213.us.us.i.us ] ; 3 uses
  %i.iqd = mul nuw nsw i64 %indvar4524, 122
  %scevgep4526 = getelementptr i8, ptr %i.iqc, i64 %i.iqd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.iqe = getelementptr inbounds nuw [122 x i8], ptr %i.iqa, i64 %indvars.iv1479.i.us ; 2 uses
  %i.iqf = getelementptr i8, ptr %i.iqe, i64 %i.apv
  %i.iqg = getelementptr i8, ptr %i.iqf, i64 -5
  store i8 0, ptr %i.iqg, align 1, !tbaa !133
  %i.iqh = add nuw nsw i64 %indvars.iv1479.i.us, 1 ; 3 uses
  %load_initial = load i8, ptr %scevgep4526, align 1
  br label %.preheader1037.us.us.i.us

.preheader1037.us.us.i.us:                        ; preds = %.preheader1037.us.us.i.us, %.preheader1037.lr.ph.us.us.i.us
  %store_forwarded = phi i8 [ %load_initial, %.preheader1037.lr.ph.us.us.i.us ], [ %i.iqw, %.preheader1037.us.us.i.us ]
  %indvars.iv1476.i.us = phi i64 [ %i.aqg, %.preheader1037.lr.ph.us.us.i.us ], [ %indvars.iv.next1477.i.us, %.preheader1037.us.us.i.us ] ; 4 uses
  %invariant.gep1208.us.us.i.us = getelementptr i8, ptr %i.iqb, i64 %indvars.iv1476.i.us ; 2 uses
  %i.iqi = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %indvars.iv1479.i.us ; 4 uses
  %55 = getelementptr i8, ptr %i.iqi, i64 -242
  %56 = load i8, ptr %55, align 1, !tbaa !133
  %i.iqj = getelementptr i8, ptr %i.iqi, i64 -120
  %i.iqk = load i8, ptr %i.iqj, align 1, !tbaa !133
  %i.iql = getelementptr i8, ptr %i.iqi, i64 2
  %i.iqm = load i8, ptr %i.iql, align 1, !tbaa !133
  %gep1209.us.us.3.i.us = getelementptr [122 x i8], ptr %invariant.gep1208.us.us.i.us, i64 %i.iqh
  %i.iqn = getelementptr i8, ptr %gep1209.us.us.3.i.us, i64 2
  %i.iqo = load i8, ptr %i.iqn, align 1, !tbaa !133
  %57 = getelementptr i8, ptr %i.iqi, i64 246
  %58 = load i8, ptr %57, align 1, !tbaa !133
  %59 = insertelement <4 x i8> poison, i8 %i.iqk, i64 0
  %60 = insertelement <4 x i8> %59, i8 %56, i64 1
  %61 = insertelement <4 x i8> %60, i8 %i.iqm, i64 2
  %62 = insertelement <4 x i8> %61, i8 %i.iqo, i64 3
  %63 = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %62)
  %op.rdx4577.a = add i8 %63, %58                 ; 2 uses
  %i.iqp = getelementptr i8, ptr %i.iqe, i64 %indvars.iv1476.i.us
  %i.iqq = trunc nsw i64 %indvars.iv1476.i.us to i32
  %i.iqr = srem i32 %i.iqq, 5
  %i.iqs = sext i32 %i.iqr to i64
  %i.iqt = getelementptr inbounds i8, ptr %i.f, i64 %i.iqs ; 2 uses
  %i.iqu = load i8, ptr %i.iqt, align 1, !tbaa !133
  %i.iqv = add i8 %store_forwarded, %op.rdx4577.a
  %i.iqw = sub i8 %i.iqv, %i.iqu                  ; 2 uses
  store i8 %i.iqw, ptr %i.iqp, align 1, !tbaa !133
  store i8 %op.rdx4577.a, ptr %i.iqt, align 1, !tbaa !133
  %indvars.iv.next1477.i.us = add nsw i64 %indvars.iv1476.i.us, 1 ; 2 uses
  %i.iqx = icmp slt i64 %indvars.iv.next1477.i.us, %i.ipy
  br i1 %i.iqx, label %.preheader1037.us.us.i.us, label %._crit_edge1213.us.us.i.us

._crit_edge1213.us.us.i.us:                       ; preds = %.preheader1037.us.us.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.iqy = icmp slt i64 %i.iqh, %i.gbm
  %indvar.next4525 = add i64 %indvar4524, 1
  br i1 %i.iqy, label %.preheader1037.lr.ph.us.us.i.us, label %._crit_edge1216.us.i.loopexit.us

._crit_edge1216.us.i.loopexit.us:                 ; preds = %._crit_edge1213.us.us.i.us
  %indvars.iv.next1483.i.us = add nuw nsw i64 %indvars.iv1482.i.us, 1 ; 2 uses
  %exitcond1486.not.i.us = icmp eq i64 %indvars.iv.next1483.i.us, %i.aqb
  br i1 %exitcond1486.not.i.us, label %.preheader1057.split.us.i, label %.preheader1053.us.i.us

.preheader1053.us.i:                              ; preds = %.preheader1053.us.preheader.i, %._crit_edge1216.us.i.loopexit1014.3
  %indvars.iv1482.i = phi i64 [ %indvars.iv.next1483.i.3, %._crit_edge1216.us.i.loopexit1014.3 ], [ 0, %.preheader1053.us.preheader.i ] ; 5 uses
  %gep = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nm, %.preheader1053.us.i
  %indvars.iv1470.i = phi i64 [ %indvars.iv.next1471.i, %bb.nm ], [ %i.apv, %.preheader1053.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i = getelementptr [122 x i8], ptr %gep, i64 %indvars.iv1470.i
  %i.iqz = getelementptr i8, ptr %gep1218.us.i, i64 -5
  store i8 0, ptr %i.iqz, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i = add nuw nsw i64 %indvars.iv1470.i, 1 ; 2 uses
  %i.ira = icmp slt i64 %indvars.iv.next1471.i, %i.gbm
  br i1 %i.ira, label %bb.nm, label %._crit_edge1216.us.i.loopexit1014

._crit_edge1216.us.i.loopexit1014:                ; preds = %bb.nm
  %i.irb = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nn, %._crit_edge1216.us.i.loopexit1014
  %indvars.iv1470.i.1 = phi i64 [ %indvars.iv.next1471.i.1, %bb.nn ], [ %i.apv, %._crit_edge1216.us.i.loopexit1014 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.1 = getelementptr [122 x i8], ptr %i.irb, i64 %indvars.iv1470.i.1
  %i.irc = getelementptr i8, ptr %gep1218.us.i.1, i64 14879
  store i8 0, ptr %i.irc, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.1 = add nuw nsw i64 %indvars.iv1470.i.1, 1 ; 2 uses
  %i.ird = icmp slt i64 %indvars.iv.next1471.i.1, %i.gbm
  br i1 %i.ird, label %bb.nn, label %._crit_edge1216.us.i.loopexit1014.1

._crit_edge1216.us.i.loopexit1014.1:              ; preds = %bb.nn
  %i.ire = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.no

bb.no:                                            ; preds = %bb.no, %._crit_edge1216.us.i.loopexit1014.1
  %indvars.iv1470.i.2 = phi i64 [ %indvars.iv.next1471.i.2, %bb.no ], [ %i.apv, %._crit_edge1216.us.i.loopexit1014.1 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.2 = getelementptr [122 x i8], ptr %i.ire, i64 %indvars.iv1470.i.2
  %i.irf = getelementptr i8, ptr %gep1218.us.i.2, i64 29763
  store i8 0, ptr %i.irf, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.2 = add nuw nsw i64 %indvars.iv1470.i.2, 1 ; 2 uses
  %i.irg = icmp slt i64 %indvars.iv.next1471.i.2, %i.gbm
  br i1 %i.irg, label %bb.no, label %._crit_edge1216.us.i.loopexit1014.2

._crit_edge1216.us.i.loopexit1014.2:              ; preds = %bb.no
  %i.irh = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1482.i
  br label %bb.np

bb.np:                                            ; preds = %bb.np, %._crit_edge1216.us.i.loopexit1014.2
  %indvars.iv1470.i.3 = phi i64 [ %indvars.iv.next1471.i.3, %bb.np ], [ %i.apv, %._crit_edge1216.us.i.loopexit1014.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %gep1218.us.i.3 = getelementptr [122 x i8], ptr %i.irh, i64 %indvars.iv1470.i.3
  %i.iri = getelementptr i8, ptr %gep1218.us.i.3, i64 44647
  store i8 0, ptr %i.iri, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %indvars.iv.next1471.i.3 = add nuw nsw i64 %indvars.iv1470.i.3, 1 ; 2 uses
  %i.irj = icmp slt i64 %indvars.iv.next1471.i.3, %i.gbm
  br i1 %i.irj, label %bb.np, label %._crit_edge1216.us.i.loopexit1014.3

._crit_edge1216.us.i.loopexit1014.3:              ; preds = %bb.np
  %indvars.iv.next1483.i.3 = add nuw nsw i64 %indvars.iv1482.i, 4 ; 2 uses
  %exitcond1486.not.i.3 = icmp eq i64 %indvars.iv.next1483.i.3, %i.aqb
  br i1 %exitcond1486.not.i.3, label %.preheader1057.split.us.i, label %.preheader1053.us.i

.preheader1052.us.i:                              ; preds = %.preheader1052.us.preheader.i, %._crit_edge1239.us.i
  %indvars.iv1513.i = phi i64 [ %i.apv, %.preheader1052.us.preheader.i ], [ %indvars.iv.next1514.i, %._crit_edge1239.us.i ] ; 4 uses
  %invariant.gep1220.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.fxb, i64 %indvars.iv1513.i
  %invariant.gep1232.us.i = getelementptr inbounds nuw [1464 x i8], ptr %i.fvz, i64 %indvars.iv1513.i
  %i.irk = trunc i64 %indvars.iv1513.i to i32
  %i.irl = add i32 %indvars.iv1341.i, %i.irk
  %i.irm = mul i32 %i.irl, %i.bo
  %i.irn = add i32 %i.irm, %indvars.iv1336.i
  br label %bb.nq

bb.nq:                                            ; preds = %.preheader1042.us.i, %.preheader1052.us.i
  %indvars.iv1510.i = phi i64 [ %indvars.iv.next1511.i, %.preheader1042.us.i ], [ %i.apv, %.preheader1052.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 0, ptr %i.g, align 8
  %invariant.gep1222.us.i = getelementptr inbounds nuw i8, ptr %invariant.gep1220.us.i, i64 %indvars.iv1510.i ; 9 uses
  br i1 %i.apa, label %vector.body2615, label %scalar.ph2611

vector.body2615:                                  ; preds = %bb.nq, %vector.body2615
  %index2616 = phi i64 [ %index.next2618, %vector.body2615 ], [ 0, %bb.nq ] ; 10 uses
  %vec.phi2617 = phi <8 x i32> [ %i.isv, %vector.body2615 ], [ zeroinitializer, %bb.nq ]
  %i.iro = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.irp = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.irq = getelementptr inbounds nuw i8, ptr %i.irp, i64 14884
  %i.irr = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.irs = getelementptr inbounds nuw i8, ptr %i.irr, i64 29768
  %i.irt = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.iru = getelementptr inbounds nuw i8, ptr %i.irt, i64 44652
  %i.irv = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.irw = getelementptr inbounds nuw i8, ptr %i.irv, i64 59536
  %i.irx = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.iry = getelementptr inbounds nuw i8, ptr %i.irx, i64 74420
  %i.irz = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.isa = getelementptr inbounds nuw i8, ptr %i.irz, i64 89304
  %i.isb = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %index2616
  %i.isc = getelementptr inbounds nuw i8, ptr %i.isb, i64 104188
  %i.isd = load i8, ptr %i.iro, align 1, !tbaa !133
  %i.ise = load i8, ptr %i.irq, align 1, !tbaa !133
  %i.isf = load i8, ptr %i.irs, align 1, !tbaa !133
  %i.isg = load i8, ptr %i.iru, align 1, !tbaa !133
  %i.ish = load i8, ptr %i.irw, align 1, !tbaa !133
  %i.isi = load i8, ptr %i.iry, align 1, !tbaa !133
  %i.isj = load i8, ptr %i.isa, align 1, !tbaa !133
  %i.isk = load i8, ptr %i.isc, align 1, !tbaa !133
  %i.isl = insertelement <8 x i8> poison, i8 %i.isd, i64 0
  %i.ism = insertelement <8 x i8> %i.isl, i8 %i.ise, i64 1
  %i.isn = insertelement <8 x i8> %i.ism, i8 %i.isf, i64 2
  %i.iso = insertelement <8 x i8> %i.isn, i8 %i.isg, i64 3
  %i.isp = insertelement <8 x i8> %i.iso, i8 %i.ish, i64 4
  %i.isq = insertelement <8 x i8> %i.isp, i8 %i.isi, i64 5
  %i.isr = insertelement <8 x i8> %i.isq, i8 %i.isj, i64 6
  %i.iss = insertelement <8 x i8> %i.isr, i8 %i.isk, i64 7 ; 2 uses
  %i.ist = getelementptr inbounds nuw i8, ptr %i.g, i64 %index2616
  store <8 x i8> %i.iss, ptr %i.ist, align 8, !tbaa !133
  %i.isu = zext <8 x i8> %i.iss to <8 x i32>
  %i.isv = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi2617, <8 x i32> %i.isu) ; 2 uses
  %index.next2618 = add nuw i64 %index2616, 8     ; 2 uses
  %i.isw = icmp eq i64 %index.next2618, %n.vec2614
  br i1 %i.isw, label %middle.block2619, label %vector.body2615, !llvm.loop !251

middle.block2619:                                 ; preds = %vector.body2615
  %i.isx = call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %i.isv)
  br label %.loopexit

scalar.ph2611:                                    ; preds = %bb.nq, %scalar.ph2611
  %indvars.iv1487.i = phi i64 [ %indvars.iv.next1488.i, %scalar.ph2611 ], [ 0, %bb.nq ] ; 3 uses
  %.08291224.us.i = phi i32 [ %..0829.us.i, %scalar.ph2611 ], [ 0, %bb.nq ]
  %gep1223.us.i = getelementptr inbounds nuw [14884 x i8], ptr %invariant.gep1222.us.i, i64 %indvars.iv1487.i
  %i.isy = load i8, ptr %gep1223.us.i, align 1, !tbaa !133 ; 2 uses
  %i.isz = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv1487.i
  store i8 %i.isy, ptr %i.isz, align 1, !tbaa !133
  %i.ita = zext i8 %i.isy to i32
  %..0829.us.i = tail call i32 @llvm.umax.i32(i32 %.08291224.us.i, i32 %i.ita) ; 2 uses
  %indvars.iv.next1488.i = add nuw nsw i64 %indvars.iv1487.i, 1 ; 2 uses
  %exitcond1491.not.i = icmp eq i64 %indvars.iv.next1488.i, %i.aqb
  br i1 %exitcond1491.not.i, label %.loopexit, label %scalar.ph2611, !llvm.loop !252

.loopexit:                                        ; preds = %scalar.ph2611, %middle.block2619
  %..0829.us.i.lcssa = phi i32 [ %i.isx, %middle.block2619 ], [ %..0829.us.i, %scalar.ph2611 ] ; 2 uses
  %i.itb = lshr i32 %..0829.us.i.lcssa, 3
  %i.itc = sub nsw i32 %..0829.us.i.lcssa, %i.itb
  br i1 %.not1292.i, label %._crit_edge1229.us.i, label %vector.body2603

vector.body2603:                                  ; preds = %.loopexit, %vector.body2603
  %index2604 = phi i64 [ %index.next2607, %vector.body2603 ], [ 0, %.loopexit ] ; 2 uses
  %i.itd = getelementptr i8, ptr %i.g, i64 %index2604 ; 3 uses
  %wide.load2605 = load <4 x i8>, ptr %i.itd, align 4, !tbaa !133 ; 2 uses
  %i.ite = getelementptr i8, ptr %i.itd, i64 4    ; 2 uses
  %wide.load2606 = load <4 x i8>, ptr %i.ite, align 4, !tbaa !133 ; 2 uses
  %i.itf = icmp ult <4 x i8> %wide.load2605, %wide.load2606
  %i.itg = icmp ugt <4 x i8> %wide.load2605, %wide.load2606
  call void @llvm.masked.store.v4i8.p0(<4 x i8> zeroinitializer, ptr align 4 %i.ite, <4 x i1> %i.itg), !tbaa !133
  call void @llvm.masked.store.v4i8.p0(<4 x i8> zeroinitializer, ptr align 4 %i.itd, <4 x i1> %i.itf), !tbaa !133
  %index.next2607 = add nuw i64 %index2604, 4     ; 2 uses
  %i.ith = icmp eq i64 %index.next2607, %wide.trip.count1495.i
  br i1 %i.ith, label %._crit_edge1229.us.i, label %vector.body2603, !llvm.loop !253

._crit_edge1229.us.i:                             ; preds = %vector.body2603, %.loopexit
  %i.iti = and i32 %i.itc, 255                    ; 2 uses
  %invariant.gep1234.us.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep1232.us.i, i64 %indvars.iv1510.i ; 2 uses
  br i1 %i.apa, label %vector.ph2568, label %scalar.ph2566

vector.ph2568:                                    ; preds = %._crit_edge1229.us.i
  %broadcast.splatinsert2570 = insertelement <8 x i32> poison, i32 %i.iti, i64 0
  %broadcast.splat2571 = shufflevector <8 x i32> %broadcast.splatinsert2570, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body2572

vector.body2572:                                  ; preds = %vector.body2572, %vector.ph2568
  %index2573 = phi i64 [ 0, %vector.ph2568 ], [ %index.next2590, %vector.body2572 ] ; 2 uses
  %vec.phi2574 = phi <8 x float> [ zeroinitializer, %vector.ph2568 ], [ %predphi2586, %vector.body2572 ] ; 2 uses
end_hunk_3
begin_hunk_4_@process:bb.a
  store <2 x i16> %i.iyy, ptr %i.iyw, align 2, !tbaa !481
  %i.iyz = getelementptr inbounds nuw i8, ptr %i.ivq, i64 12
  %i.iza = load i16, ptr %i.iyz, align 4, !tbaa !481
  %.reass.3.2.i535 = mul i16 %i.iza, -122
  %i.izb = getelementptr inbounds nuw i8, ptr %i.ivd, i64 6
  store i16 %.reass.3.2.i535, ptr %i.izb, align 2, !tbaa !481
  %i.izc = getelementptr inbounds nuw i8, ptr %i.ivd, i64 8
  store i16 -123, ptr %i.izc, align 8, !tbaa !481
  %i.izd = getelementptr inbounds nuw i8, ptr %i.ivq, i64 20
  %i.ize = getelementptr inbounds nuw i8, ptr %i.ivd, i64 10
  %i.izf = load <4 x i16>, ptr %i.izd, align 4, !tbaa !481 ; 2 uses
  %i.izg = shufflevector <4 x i16> %i.izf, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.izh = mul <2 x i16> %i.izg, splat (i16 -122)
  %i.izi = shufflevector <4 x i16> %i.izf, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.izj = sub <2 x i16> %i.izh, %i.izi
  store <2 x i16> %i.izj, ptr %i.ize, align 2, !tbaa !481
  %i.izk = getelementptr inbounds nuw i8, ptr %i.ivq, i64 28
  %i.izl = load i16, ptr %i.izk, align 4, !tbaa !481
  %.reass.7.2.i539 = mul i16 %i.izl, -122
  %i.izm = getelementptr inbounds nuw i8, ptr %i.ivq, i64 30
  %i.izn = load i16, ptr %i.izm, align 2, !tbaa !481
  %i.izo = sub i16 %.reass.7.2.i539, %i.izn
  %i.izp = getelementptr inbounds nuw i8, ptr %i.ivd, i64 14
  store i16 %i.izo, ptr %i.izp, align 2, !tbaa !481
  br label %.loopexit1063.2.i

.loopexit1063.2.i:                                ; preds = %.preheader1062.2.i, %.loopexit1063.1.i
  %i.izq = add nuw nsw i32 %i.ivb, 601
  %.urem1319.i = urem i32 %i.izq, 6
  %i.izr = zext nneg i32 %.urem1319.i to i64
  %i.izs = getelementptr inbounds nuw i8, ptr %i.fws, i64 %i.izr
  %i.izt = load i8, ptr %i.izs, align 1, !tbaa !133
  %i.izu = icmp eq i8 %i.izt, 1
  %i.izv = add nuw nsw i32 %.1918.2.i, 1
  %.1918.3.i = select i1 %i.izu, i32 0, i32 %i.izv ; 3 uses
  %i.izw = icmp eq i32 %.1918.3.i, 4
  %i.izx = icmp eq i32 %.1918.3.i, %i.ivo
  br i1 %i.izx, label %.preheader1062.3.i, label %.loopexit1063.3.i

.preheader1062.3.i:                               ; preds = %.loopexit1063.2.i
  %i.izy = and i32 %i.ivo, 2                      ; 5 uses
  %i.izz = zext nneg i32 %i.izy to i64
  %i.jaa = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.izz ; 2 uses
  store i16 -122, ptr %i.jaa, align 4, !tbaa !481
  %i.jab = getelementptr inbounds nuw i8, ptr %i.ivq, i64 6
  %i.jac = load i16, ptr %i.jab, align 2, !tbaa !481
  %.reass1069.1.3.i = mul i16 %i.jac, -122
  %i.jad = or i32 %i.ivo, 1
  %i.jae = zext nneg i32 %i.jad to i64
  %i.jaf = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.jae
  store i16 %.reass1069.1.3.i, ptr %i.jaf, align 2, !tbaa !481
  %i.jag = getelementptr inbounds nuw i8, ptr %i.ivq, i64 8
  %i.jah = load i16, ptr %i.jag, align 8, !tbaa !481
  %i.jai = xor i32 %i.izy, 2
  %i.jaj = zext nneg i32 %i.jai to i64
  %i.jak = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.jaj
  store i16 %i.jah, ptr %i.jak, align 4, !tbaa !481
  %i.jal = getelementptr inbounds nuw i8, ptr %i.ivq, i64 12
  %i.jam = load i16, ptr %i.jal, align 4, !tbaa !481
  %i.jan = xor i32 %i.izy, 3
  %i.jao = zext nneg i32 %i.jan to i64
  %i.jap = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.jao
  store i16 %i.jam, ptr %i.jap, align 2, !tbaa !481
  %i.jaq = getelementptr inbounds nuw i8, ptr %i.jaa, i64 8
  store i16 -121, ptr %i.jaq, align 4, !tbaa !481
  %i.jar = getelementptr inbounds nuw i8, ptr %i.ivq, i64 20
  %i.jas = load i16, ptr %i.jar, align 4, !tbaa !481
  %i.jat = getelementptr inbounds nuw i8, ptr %i.ivq, i64 22
  %i.jau = load i16, ptr %i.jat, align 2, !tbaa !481
  %.reass1069.5.3.i = mul i16 %i.jau, -122
  %i.jav = add i16 %.reass1069.5.3.i, %i.jas
  %i.jaw = or i32 %i.ivo, 5
  %i.jax = zext nneg i32 %i.jaw to i64
  %i.jay = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.jax
  store i16 %i.jav, ptr %i.jay, align 2, !tbaa !481
  %i.jaz = getelementptr inbounds nuw i8, ptr %i.ivq, i64 24
  %i.jba = xor i32 %i.izy, 6
  %i.jbb = zext nneg i32 %i.jba to i64
  %i.jbc = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.jbb
  %i.jbd = load <4 x i16>, ptr %i.jaz, align 8, !tbaa !481 ; 2 uses
  %i.jbe = shufflevector <4 x i16> %i.jbd, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jbf = mul <2 x i16> %i.jbe, splat (i16 -122)
  %i.jbg = shufflevector <4 x i16> %i.jbd, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jbh = add <2 x i16> %i.jbf, %i.jbg           ; 2 uses
  %i.jbi = extractelement <2 x i16> %i.jbh, i64 0
  store i16 %i.jbi, ptr %i.jbc, align 4, !tbaa !481
  %i.jbj = xor i32 %i.izy, 7
  %i.jbk = zext nneg i32 %i.jbj to i64
  %i.jbl = getelementptr inbounds nuw [2 x i8], ptr %i.ivd, i64 %i.jbk
  %i.jbm = extractelement <2 x i16> %i.jbh, i64 1
  store i16 %i.jbm, ptr %i.jbl, align 2, !tbaa !481
  br label %.loopexit1063.3.i

.loopexit1063.3.i:                                ; preds = %.preheader1062.3.i, %.loopexit1063.2.i
  %i.jbn = add nuw nsw i32 %.1918.3.i, 1
  %.1918.4.i = select i1 %i.ivv, i32 0, i32 %i.jbn ; 2 uses
  %i.jbo = icmp eq i32 %.1918.4.i, 4
  %i.jbp = or i1 %i.izw, %i.jbo                   ; 2 uses
  %.3851.4.i = select i1 %i.jbp, i16 %i.ivc, i16 %.18491076.i ; 4 uses
  %.3.4.i = select i1 %i.jbp, i16 %i.fwc, i16 %.18451077.i ; 4 uses
  %i.jbq = icmp eq i32 %.1918.4.i, %i.ivo
  br i1 %i.jbq, label %.preheader1062.4.i, label %.loopexit1063.4.i

.preheader1062.4.i:                               ; preds = %.loopexit1063.3.i
  store i16 1, ptr %i.ivd, align 16, !tbaa !481
  %i.jbr = getelementptr inbounds nuw i8, ptr %i.ivq, i64 6
  %i.jbs = load i16, ptr %i.jbr, align 2, !tbaa !481
  %i.jbt = getelementptr inbounds nuw i8, ptr %i.ivd, i64 2
  store i16 %i.jbs, ptr %i.jbt, align 2, !tbaa !481
  %i.jbu = getelementptr inbounds nuw i8, ptr %i.ivq, i64 8
  %i.jbv = getelementptr inbounds nuw i8, ptr %i.ivd, i64 4
  %i.jbw = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.jbu, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !481
  %i.jbx = shufflevector <3 x i16> %i.jbw, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jby = mul <2 x i16> %i.jbx, splat (i16 122)
  store <2 x i16> %i.jby, ptr %i.jbv, align 4, !tbaa !481
  %i.jbz = getelementptr inbounds nuw i8, ptr %i.ivd, i64 8
  store i16 123, ptr %i.jbz, align 8, !tbaa !481
  %i.jca = getelementptr inbounds nuw i8, ptr %i.ivq, i64 20
  %i.jcb = getelementptr inbounds nuw i8, ptr %i.ivd, i64 10
  %i.jcc = load <4 x i16>, ptr %i.jca, align 4, !tbaa !481 ; 2 uses
  %i.jcd = shufflevector <4 x i16> %i.jcc, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jce = mul <2 x i16> %i.jcd, splat (i16 122)
  %i.jcf = shufflevector <4 x i16> %i.jcc, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jcg = add <2 x i16> %i.jcf, %i.jce
  store <2 x i16> %i.jcg, ptr %i.jcb, align 2, !tbaa !481
  %i.jch = getelementptr inbounds nuw i8, ptr %i.ivq, i64 28
  %i.jci = load i16, ptr %i.jch, align 4, !tbaa !481
  %.reass.7.4.i532 = mul i16 %i.jci, 122
  %i.jcj = getelementptr inbounds nuw i8, ptr %i.ivq, i64 30
  %i.jck = load i16, ptr %i.jcj, align 2, !tbaa !481
  %i.jcl = add i16 %i.jck, %.reass.7.4.i532
  %i.jcm = getelementptr inbounds nuw i8, ptr %i.ivd, i64 14
  store i16 %i.jcl, ptr %i.jcm, align 2, !tbaa !481
  br label %.loopexit1063.4.i

.loopexit1063.4.i:                                ; preds = %.preheader1062.4.i, %.loopexit1063.3.i
  %indvars.iv.next.i509 = add nuw nsw i64 %indvars.iv.i499, 1 ; 2 uses
  %exitcond.not.i510 = icmp eq i64 %indvars.iv.next.i509, 3
  br i1 %exitcond.not.i510, label %bb.ns, label %.preheader1064.i

._crit_edge1251.i:                                ; preds = %.lr.ph1250.split.i, %._crit_edge1247.us.i, %bb.lk
  tail call void @free(ptr noundef %i.fvz) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.anw, ptr noundef readonly %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.aph)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1250.split.i:                               ; preds = %.lr.ph1250.i, %.lr.ph1250.split.i
  %.09141248.i = phi i32 [ %i.jcn, %.lr.ph1250.split.i ], [ %.neg.i511, %.lr.ph1250.i ]
  %i.jcn = add i32 %.09141248.i, %reass.sub955.i  ; 2 uses
  %i.jco = icmp slt i32 %i.jcn, %i.fww
  br i1 %i.jco, label %.lr.ph1250.split.i, label %._crit_edge1251.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.lj, %._crit_edge1251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.nt:                                            ; preds = %bb.lh
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.nu:                                            ; preds = %bb.hz
  br i1 %or.cond31, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef %.fr1070, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.nw, label %demosaic_box3.exit

bb.nw:                                            ; preds = %bb.nv
  %i.jcp = mul nsw i32 %i.axe, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.anw, i32 noundef %i.jcp, ptr noundef nonnull %i.aoy) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aoz, i32 noundef 1, ptr noundef nonnull %i.aoy) #27
  br label %demosaic_box3.exit

bb.nx:                                            ; preds = %bb.nu
  switch i32 %.0394, label %bb.qh [
    i32 5, label %bb.ny
    i32 6, label %bb.oh
    i32 1, label %bb.qi
  ]

bb.ny:                                            ; preds = %bb.nx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 10)
  %i.jcq = icmp slt i32 %i.axe, 20
  %or.cond.i540 = or i1 %i.aoq, %i.jcq
  br i1 %or.cond.i540, label %demosaic_box3.exit, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.jcr = add nsw i32 %i.axe, -21
  %i.jcs = sdiv i32 %i.jcr, 92
  %i.jct = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jct, i64 64) ]
  %.not.i.i541 = icmp eq ptr %i.jct, null
  br i1 %.not.i.i541, label %.preheader833.preheader.i, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jct, i8 0, i64 50176, i1 false), !noalias !499
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.oa, %bb.nz
  %i.jcu = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 28 uses
  %i.jcv = ptrtoaddr ptr %i.jcu to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jcu, i64 64) ]
  %i.jcw = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 38 uses
  %i.jcx = ptrtoaddr ptr %i.jcw to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jcw, i64 64) ]
  %i.jcy = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jcy, i64 64) ]
  %i.jcz = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  %i.jda = insertelement <2 x ptr> poison, ptr %i.jcy, i64 0
  %i.jdb = insertelement <2 x ptr> %i.jda, ptr %i.jcz, i64 1
  %i.jdc = shufflevector <2 x ptr> %i.jdb, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jdd = ptrtoaddr <4 x ptr> %i.jdc to <4 x i64>
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jcz, i64 64) ]
  %i.jde = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !499 ; 61 uses
  %i.jdf = ptrtoaddr ptr %i.jde to i64            ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jde, i64 64) ]
  %i.jdg = getelementptr inbounds nuw i8, ptr %i.jde, i64 50176 ; 24 uses
  %i.jdh = getelementptr inbounds nuw i8, ptr %i.jde, i64 100352 ; 12 uses
  %scevgep2954 = getelementptr i8, ptr %i.jde, i64 -1344
  %scevgep2956 = getelementptr i8, ptr %i.jde, i64 101700
  %scevgep2958 = getelementptr i8, ptr %i.jct, i64 -452
  %scevgep2960 = getelementptr i8, ptr %i.jct, i64 456
  %scevgep3041 = getelementptr i8, ptr %i.jde, i64 100352
  %scevgep3043 = getelementptr i8, ptr %i.jde, i64 100356
  %scevgep3046 = getelementptr i8, ptr %i.jcu, i64 8
  %scevgep3049 = getelementptr i8, ptr %i.jcu, i64 8
  %scevgep3051 = getelementptr i8, ptr %i.jcu, i64 8
  %scevgep3055 = getelementptr i8, ptr %i.jcu, i64 12
  %scevgep3057 = getelementptr i8, ptr %i.jde, i64 99900
  %scevgep3059 = getelementptr i8, ptr %i.jde, i64 99904
  %scevgep3061 = getelementptr i8, ptr %i.jde, i64 100804
  %scevgep3063 = getelementptr i8, ptr %i.jde, i64 100808
  %scevgep3065 = getelementptr i8, ptr %i.jde, i64 98996
  %scevgep3067 = getelementptr i8, ptr %i.jde, i64 99000
  %scevgep3069 = getelementptr i8, ptr %i.jde, i64 50176
  %scevgep3071 = getelementptr i8, ptr %i.jde, i64 50180
  %scevgep3073 = getelementptr i8, ptr %i.jde, i64 49272
  %scevgep3075 = getelementptr i8, ptr %i.jde, i64 49276
  %scevgep3077 = getelementptr i8, ptr %i.jde, i64 99908
  %scevgep3079 = getelementptr i8, ptr %i.jde, i64 99912
  %scevgep3081 = getelementptr i8, ptr %i.jde, i64 100796
  %scevgep3083 = getelementptr i8, ptr %i.jde, i64 100800
  %scevgep3085 = getelementptr i8, ptr %i.jde, i64 99020
  %scevgep3087 = getelementptr i8, ptr %i.jde, i64 99024
  %scevgep3089 = getelementptr i8, ptr %i.jde, i64 49288
  %scevgep3091 = getelementptr i8, ptr %i.jde, i64 49292
  %scevgep3093 = getelementptr i8, ptr %i.jde, i64 101684
  %scevgep3095 = getelementptr i8, ptr %i.jde, i64 101688
  %scevgep3097 = getelementptr i8, ptr %i.jde, i64 51064
  %scevgep3099 = getelementptr i8, ptr %i.jde, i64 51068
  %scevgep3101 = getelementptr i8, ptr %i.jde, i64 101708
  %scevgep3103 = getelementptr i8, ptr %i.jde, i64 101712
  %scevgep3105 = getelementptr i8, ptr %i.jde, i64 51080
  %scevgep3107 = getelementptr i8, ptr %i.jde, i64 51084
  %scevgep3109 = getelementptr i8, ptr %i.jde, i64 49724
  %scevgep3111 = getelementptr i8, ptr %i.jde, i64 49728
  %scevgep3113 = getelementptr i8, ptr %i.jde, i64 49732
  %scevgep3115 = getelementptr i8, ptr %i.jde, i64 49736
  %scevgep3117 = getelementptr i8, ptr %i.jde, i64 50620
  %scevgep3119 = getelementptr i8, ptr %i.jde, i64 50624
  %scevgep3121 = getelementptr i8, ptr %i.jde, i64 50628
  %scevgep3123 = getelementptr i8, ptr %i.jde, i64 50632
  %i.jdi = insertelement <4 x i64> poison, i64 %i.jcv, i64 0
  %i.jdj = shufflevector <4 x i64> %i.jdi, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jdk = or disjoint <4 x i64> %i.jdj, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3296 = getelementptr i8, ptr %i.jcw, i64 -1344
  %scevgep3301 = getelementptr i8, ptr %i.jcw, i64 -440
  %scevgep3303 = getelementptr i8, ptr %i.jcw, i64 -892
  %scevgep3305 = getelementptr i8, ptr %i.jcw, i64 12
  %scevgep3307 = getelementptr i8, ptr %i.jcw, i64 -1320
  %scevgep3309 = getelementptr i8, ptr %i.jcw, i64 -432
  %scevgep3311 = getelementptr i8, ptr %i.jcw, i64 -876
  %scevgep3318 = getelementptr i8, ptr %i.jcw, i64 -1344
  %scevgep3320 = getelementptr i8, ptr %i.jcw, i64 1364
  %scevgep3372 = getelementptr i8, ptr %i.jde, i64 50176
  %scevgep3374 = getelementptr i8, ptr %i.jde, i64 50180
  %scevgep3376 = getelementptr i8, ptr %i.jcw, i64 -1792
  %scevgep3378 = getelementptr i8, ptr %i.jcw, i64 1796
  %scevgep3380 = getelementptr i8, ptr %i.jcu, i64 -448
  %scevgep3382 = getelementptr i8, ptr %i.jcu, i64 452
  %scevgep3384 = getelementptr i8, ptr %i.jct, i64 -452
  %scevgep3386 = getelementptr i8, ptr %i.jct, i64 456
  %scevgep3463 = getelementptr i8, ptr %i.jcu, i64 4
  %scevgep3465 = getelementptr i8, ptr %i.jcw, i64 -452
  %scevgep3467 = getelementptr i8, ptr %i.jcw, i64 456
  %scevgep3499 = getelementptr i8, ptr %i.jct, i64 16
  %scevgep3550 = getelementptr i8, ptr %i.jcw, i64 -1328
  %scevgep3552 = getelementptr i8, ptr %i.jcw, i64 1344
  %invariant.op4840 = sub i64 %i.jdf, %i.jcx
  %invariant.op4842 = sub i64 %i.jdf, %i.jcx
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1056.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1057.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jei, %._crit_edge939.i ] ; 4 uses
  %i.jdl = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jdm = add nuw nsw i32 %i.jdl, 112            ; 2 uses
  %i.jdn = tail call i32 @llvm.smin.i32(i32 %i.jdm, i32 %i.axe) ; 3 uses
  %i.jdo = sub nsw i32 %i.jdn, %i.jdl             ; 6 uses
  %i.jdp = icmp sgt i32 %i.jdm, %i.axe
  %i.jdq = icmp sgt i32 %i.axe, %i.jdl
  %i.jdr = add nsw i32 %i.jdo, -3                 ; 2 uses
  %i.jds = tail call i32 @llvm.smin.i32(i32 %i.jdr, i32 5)
  %i.jdt = icmp sgt i32 %i.jdo, 6                 ; 2 uses
  %i.jdu = add nsw i32 %i.jdo, -4                 ; 5 uses
  %i.jdv = icmp sgt i32 %i.jdo, 8                 ; 3 uses
  %i.jdw = add nsw i32 %i.jdo, -2
  %i.jdx = icmp sgt i32 %i.jdo, 4
  %i.jdy = icmp eq i32 %.0740941.i, 0
  %i.jdz = select i1 %i.jdy, i32 9, i32 10        ; 3 uses
  %i.jea = add nuw nsw i32 %i.jdz, %i.jdl         ; 2 uses
  %i.jeb = icmp eq i32 %.0740941.i, %i.jcs        ; 2 uses
  %.neg.i542 = select i1 %i.jeb, i32 -9, i32 -10
  %i.jec = add nsw i32 %i.jdn, %.neg.i542         ; 2 uses
  %i.jed = icmp slt i32 %i.jea, %i.jec
  %i.jee = sext i32 %i.jds to i64
  %i.jef = add i32 %i.jdz, %indvars.iv1056.i
  %i.jeg = mul i32 %i.jef, %i.bo
  %i.jeh = mul nuw nsw i32 %i.jdz, 112
  %invariant.op.i = add nsw i64 %i.jee, -1
  br label %bb.ob

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jcw) #27, !noalias !499
  tail call void @free(ptr noundef %i.jde) #27, !noalias !499
  tail call void @free(ptr noundef %i.jct) #27, !noalias !499
  tail call void @free(ptr noundef %i.jcu) #27, !noalias !499
  tail call void @free(ptr noundef %i.jcy) #27, !noalias !499
  tail call void @free(ptr noundef %i.jcz) #27, !noalias !499
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jei = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.aov
  %indvars.iv.next1057.i = add nuw i32 %indvars.iv1056.i, 92
  br i1 %i.jeb, label %._crit_edge942.split.i, label %.preheader833.i

bb.ob:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1058.i = phi i32 [ %i.jeg, %.preheader833.i ], [ %indvars.iv.next1059.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv1018.i = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 6 uses
  %indvars.iv1016.i = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next1017.i, %._crit_edge935.split.i ] ; 5 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.lpw, %._crit_edge935.split.i ] ; 5 uses
  %smin3624 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jej = mul i32 %.0745937.i, 92
  %i.jek = or disjoint i32 %i.jej, 1
  %smax3625 = call i32 @llvm.smax.i32(i32 %smin3624, i32 %i.jek)
  %i.jel = add i32 %indvars.iv1018.i, -1
  %i.jem = add i32 %smax3625, %i.jel              ; 3 uses
  %i.jen = zext i32 %i.jem to i64
  %i.jeo = add nuw nsw i64 %i.jen, 1              ; 5 uses
  %smin3547 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jep = add i32 %smin3547, %indvars.iv1018.i
  %smin3548 = call i32 @llvm.smin.i32(i32 %i.jep, i32 112)
  %i.jeq = add i32 %smin3548, -4
  %i.jer = sext i32 %i.jeq to i64
  %i.jes = shl nsw i64 %i.jer, 2                  ; 2 uses
  %smin3501 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jet = add i32 %smin3501, %indvars.iv1018.i
  %smin3502 = call i32 @llvm.smin.i32(i32 %i.jet, i32 112)
  %i.jeu = add i32 %smin3502, -4
  %i.jev = sext i32 %i.jeu to i64
  %i.jew = shl nsw i64 %i.jev, 2                  ; 5 uses
  %scevgep3512 = getelementptr i8, ptr %scevgep3511, i64 %i.jew
  %i.jex = add i32 %indvars.iv1018.i, -1
  %smin1174 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jey = add i32 %smin1174, %indvars.iv1018.i
  %smin1175 = call i32 @llvm.smin.i32(i32 %i.jey, i32 112) ; 11 uses
  %i.jez = add i32 %smin1175, -4
  %i.jfa = sext i32 %i.jez to i64                 ; 10 uses
  %i.jfb = add i32 %smin1175, -3                  ; 2 uses
  %i.jfc = sext i32 %i.jfb to i64                 ; 2 uses
  %i.jfd = add nsw i64 %i.jfa, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jfb, i32 5)
  %i.jfe = add nsw i32 %smax.i, -4
  %i.jff = lshr i32 %i.jfe, 1                     ; 4 uses
  %i.jfg = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jfh = add i32 %i.jfg, 112                    ; 2 uses
  %i.jfi = tail call i32 @llvm.smin.i32(i32 %i.jfh, i32 %i.bo) ; 4 uses
  %i.jfj = sub nsw i32 %i.jfi, %i.jfg             ; 4 uses
  %i.jfk = tail call i32 @llvm.smin.i32(i32 %i.jfj, i32 112) ; 3 uses
  %i.jfl = icmp sgt i32 %i.jfh, %i.bo
  %or.cond794.i = select i1 %i.jdp, i1 true, i1 %i.jfl
  br i1 %or.cond794.i, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jct, i8 0, i64 50176, i1 false), !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jde, i8 0, i64 150528, i1 false), !noalias !499
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.jfm = icmp sgt i32 %i.bo, %i.jfg
  %or.cond943.i = select i1 %i.jdq, i1 %i.jfm, i1 false
  br i1 %or.cond943.i, label %iter.check3647.preheader, label %._crit_edge842.split.i

iter.check3647.preheader:                         ; preds = %bb.od
  %min.iters.check3627 = icmp ult i32 %i.jem, 3
  %min.iters.check3629 = icmp ult i32 %i.jem, 31
  %i.jfn = and i64 %i.jeo, 28
end_hunk_4
begin_hunk_5_@process:bb.a
  %bound03192 = icmp ult ptr %scevgep3042, %scevgep3116
  %bound13193 = icmp ult ptr %scevgep3114, %scevgep3044
  %found.conflict3194 = and i1 %bound03192, %bound13193
  %conflict.rdx3195 = or i1 %conflict.rdx3191, %found.conflict3194
  %bound03196 = icmp ult ptr %scevgep3042, %scevgep3120
  %bound13197 = icmp ult ptr %scevgep3118, %scevgep3044
  %found.conflict3198 = and i1 %bound03196, %bound13197
  %conflict.rdx3199 = or i1 %conflict.rdx3195, %found.conflict3198
  %bound03200 = icmp ult ptr %scevgep3042, %scevgep3124
  %bound13201 = icmp ult ptr %scevgep3122, %scevgep3044
  %found.conflict3202 = and i1 %bound03200, %bound13201
  %conflict.rdx3203 = or i1 %conflict.rdx3199, %found.conflict3202
  br i1 %conflict.rdx3203, label %scalar.ph3204.preheader, label %vector.ph3206

vector.ph3206:                                    ; preds = %vector.memcheck3040
  %i.ktl = and i64 %i.ksr, 7                      ; 2 uses
  %i.ktm = icmp eq i64 %i.ktl, 0
  %i.ktn = select i1 %i.ktm, i64 8, i64 %i.ktl
  %n.vec3207 = sub nsw i64 %i.ksr, %i.ktn         ; 6 uses
  %i.kto = shl nsw i64 %n.vec3207, 1
  %i.ktp = add nsw i64 %i.kto, %i.kso
  %i.ktq = add nsw i64 %n.vec3207, %i.ksn
  %i.ktr = add nsw i64 %n.vec3207, %i.ksk
  %i.kts = add nsw i64 %n.vec3207, %i.ksh
  %i.ktt = trunc i64 %n.vec3207 to i32
  %i.ktu = shl i32 %i.ktt, 1
  %i.ktv = add i32 %i.krw, %i.ktu
  %broadcast.splatinsert3208 = insertelement <8 x i64> poison, i64 %i.kso, i64 0
  %broadcast.splat3209 = shufflevector <8 x i64> %broadcast.splatinsert3208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3210 = add nuw nsw <8 x i64> %broadcast.splat3209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4852 = getelementptr [4 x i8], ptr %i.jcu, i64 %i.ksn
  br label %vector.body3211

vector.body3211:                                  ; preds = %vector.body3211, %vector.ph3206
  %index3212 = phi i64 [ 0, %vector.ph3206 ], [ %index.next3254, %vector.body3211 ] ; 5 uses
  %vec.ind3213 = phi <8 x i64> [ %induction3210, %vector.ph3206 ], [ %vec.ind.next3255, %vector.body3211 ] ; 2 uses
  %i.ktw = shl nuw i64 %index3212, 1
  %i.ktx = add nuw i64 %i.ktw, %i.kso             ; 5 uses
  %i.kty = add nuw i64 %index3212, %i.ksk         ; 2 uses
  %i.ktz = add nuw i64 %index3212, %i.ksh         ; 2 uses
  %gep4853 = getelementptr [4 x i8], ptr %invariant.gep4852, i64 %index3212
  %wide.load3214 = load <8 x float>, ptr %gep4853, align 8, !tbaa !12, !alias.scope !524, !noalias !499 ; 2 uses
  %i.kua = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %i.kty
  %wide.load3215 = load <8 x float>, ptr %i.kua, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kub = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %i.kty
  %i.kuc = getelementptr inbounds nuw i8, ptr %i.kub, i64 4
  %wide.load3216 = load <8 x float>, ptr %i.kuc, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kud = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3216, %wide.load3215
  %i.kue = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %i.ktz
  %wide.load3217 = load <8 x float>, ptr %i.kue, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kuf = fadd reassoc nsz arcp contract afn <8 x float> %i.kud, %wide.load3217
  %i.kug = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %i.ktz
  %i.kuh = getelementptr inbounds nuw i8, ptr %i.kug, i64 4
  %wide.load3218 = load <8 x float>, ptr %i.kuh, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kui = fadd reassoc nsz arcp contract afn <8 x float> %i.kuf, %wide.load3218
  %i.kuj = fmul reassoc nsz arcp contract afn <8 x float> %i.kui, splat (float 2.500000e-01) ; 2 uses
  %i.kuk = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3214
  %i.kul = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kuk)
  %i.kum = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kuj
  %i.kun = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kum)
  %i.kuo = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kul, %i.kun
  %i.kup = select reassoc nsz arcp contract afn <8 x i1> %i.kuo, <8 x float> %i.kuj, <8 x float> %wide.load3214 ; 3 uses
  %i.kuq = add nsw i64 %i.ktx, -113               ; 2 uses
  %i.kur = getelementptr inbounds [4 x i8], ptr %i.kse, i64 %i.kuq
  %wide.vec3219 = load <16 x float>, ptr %i.kur, align 4, !tbaa !12, !alias.scope !527, !noalias !499
  %strided.vec3220 = shufflevector <16 x float> %wide.vec3219, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kus = add nuw nsw i64 %i.ktx, 113            ; 2 uses
  %i.kut = getelementptr inbounds nuw [4 x i8], ptr %i.kse, i64 %i.kus
  %wide.vec3221 = load <16 x float>, ptr %i.kut, align 4, !tbaa !12, !alias.scope !528, !noalias !499
  %strided.vec3222 = shufflevector <16 x float> %wide.vec3221, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kuu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220, %strided.vec3222
  %i.kuv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kuu)
  %i.kuw = fadd reassoc nsz arcp contract afn <8 x float> %i.kuv, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3223 = getelementptr [4 x i8], ptr %i.kse, <8 x i64> %vec.ind3213 ; 2 uses
  %i.kux = extractelement <8 x ptr> %wide.gep3223, i64 0 ; 4 uses
  %i.kuy = getelementptr i8, ptr %i.kux, i64 -1356
  %wide.vec3224 = load <16 x float>, ptr %i.kuy, align 4, !tbaa !12, !alias.scope !529, !noalias !499
  %strided.vec3225 = shufflevector <16 x float> %wide.vec3224, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kuz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220, %strided.vec3225
  %i.kva = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kuz)
  %i.kvb = fadd reassoc nsz arcp contract afn <8 x float> %i.kuw, %i.kva
  %i.kvc = getelementptr inbounds nuw [4 x i8], ptr %i.jdg, i64 %i.ktx ; 5 uses
  %wide.vec3226 = load <16 x float>, ptr %i.kvc, align 4, !tbaa !12, !alias.scope !530, !noalias !499
  %strided.vec3227 = shufflevector <16 x float> %wide.vec3226, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kvd = getelementptr i8, ptr %i.kvc, i64 -904
  %wide.vec3228 = load <16 x float>, ptr %i.kvd, align 4, !tbaa !12, !alias.scope !531, !noalias !499
  %strided.vec3229 = shufflevector <16 x float> %wide.vec3228, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kve = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3229
  %i.kvf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kve)
  %i.kvg = fadd reassoc nsz arcp contract afn <8 x float> %i.kvb, %i.kvf ; 2 uses
  %i.kvh = add nsw i64 %i.ktx, -111               ; 2 uses
  %i.kvi = getelementptr inbounds [4 x i8], ptr %i.kse, i64 %i.kvh
  %wide.vec3230 = load <16 x float>, ptr %i.kvi, align 4, !tbaa !12, !alias.scope !532, !noalias !499
  %strided.vec3231 = shufflevector <16 x float> %wide.vec3230, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kvj = add nuw nsw i64 %i.ktx, 111            ; 2 uses
  %i.kvk = getelementptr inbounds nuw [4 x i8], ptr %i.kse, i64 %i.kvj
  %wide.vec3232 = load <16 x float>, ptr %i.kvk, align 4, !tbaa !12, !alias.scope !533, !noalias !499
  %strided.vec3233 = shufflevector <16 x float> %wide.vec3232, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kvl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3233
  %i.kvm = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kvl)
  %i.kvn = fadd reassoc nsz arcp contract afn <8 x float> %i.kvm, splat (float f0x3727C5AC) ; 2 uses
  %i.kvo = getelementptr i8, ptr %i.kux, i64 -1332
  %wide.vec3234 = load <16 x float>, ptr %i.kvo, align 4, !tbaa !12, !alias.scope !534, !noalias !499
  %strided.vec3235 = shufflevector <16 x float> %wide.vec3234, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kvp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3235
  %i.kvq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kvp)
  %i.kvr = fadd reassoc nsz arcp contract afn <8 x float> %i.kvn, %i.kvq
  %i.kvs = getelementptr i8, ptr %i.kvc, i64 -888
  %wide.vec3236 = load <16 x float>, ptr %i.kvs, align 4, !tbaa !12, !alias.scope !535, !noalias !499
  %strided.vec3237 = shufflevector <16 x float> %wide.vec3236, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kvt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3237
  %i.kvu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kvt)
  %i.kvv = fadd reassoc nsz arcp contract afn <8 x float> %i.kvr, %i.kvu ; 2 uses
  %i.kvw = getelementptr inbounds nuw i8, ptr %i.kux, i64 1332
  %wide.vec3238 = load <16 x float>, ptr %i.kvw, align 4, !tbaa !12, !alias.scope !536, !noalias !499
  %strided.vec3239 = shufflevector <16 x float> %wide.vec3238, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kvx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233, %strided.vec3239
  %i.kvy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kvx)
  %i.kvz = fadd reassoc nsz arcp contract afn <8 x float> %i.kvy, %i.kvn
  %i.kwa = getelementptr inbounds nuw i8, ptr %i.kvc, i64 888
  %wide.vec3240 = load <16 x float>, ptr %i.kwa, align 4, !tbaa !12, !alias.scope !537, !noalias !499
  %strided.vec3241 = shufflevector <16 x float> %wide.vec3240, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3241
  %i.kwc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwb)
  %i.kwd = fadd reassoc nsz arcp contract afn <8 x float> %i.kvz, %i.kwc ; 2 uses
  %i.kwe = getelementptr inbounds nuw i8, ptr %i.kux, i64 1356
  %wide.vec3242 = load <16 x float>, ptr %i.kwe, align 4, !tbaa !12, !alias.scope !538, !noalias !499
  %strided.vec3243 = shufflevector <16 x float> %wide.vec3242, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwf = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3243
  %i.kwg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwf)
  %i.kwh = fadd reassoc nsz arcp contract afn <8 x float> %i.kwg, %i.kuw
  %i.kwi = getelementptr inbounds nuw i8, ptr %i.kvc, i64 904
  %wide.vec3244 = load <16 x float>, ptr %i.kwi, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3245 = shufflevector <16 x float> %wide.vec3244, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3245
  %i.kwk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwj)
  %i.kwl = fadd reassoc nsz arcp contract afn <8 x float> %i.kwh, %i.kwk ; 2 uses
  %i.kwm = getelementptr inbounds [4 x i8], ptr %i.jdg, i64 %i.kuq
  %wide.vec3246 = load <16 x float>, ptr %i.kwm, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3247 = shufflevector <16 x float> %wide.vec3246, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220, %strided.vec3247
  %i.kwo = getelementptr inbounds [4 x i8], ptr %i.jdg, i64 %i.kvh
  %wide.vec3248 = load <16 x float>, ptr %i.kwo, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3249 = shufflevector <16 x float> %wide.vec3248, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3249
  %i.kwq = getelementptr inbounds nuw [4 x i8], ptr %i.jdg, i64 %i.kvj
  %wide.vec3250 = load <16 x float>, ptr %i.kwq, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3251 = shufflevector <16 x float> %wide.vec3250, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233, %strided.vec3251
  %i.kws = getelementptr inbounds nuw [4 x i8], ptr %i.jdg, i64 %i.kus
  %wide.vec3252 = load <16 x float>, ptr %i.kws, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3253 = shufflevector <16 x float> %wide.vec3252, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kwt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3253
  %i.kwu = fmul reassoc nsz arcp contract afn <8 x float> %i.kwt, %i.kvg
  %i.kwv = fmul reassoc nsz arcp contract afn <8 x float> %i.kwl, %i.kwn
  %i.kww = fadd reassoc nsz arcp contract afn <8 x float> %i.kwu, %i.kwv
  %i.kwx = fadd reassoc nsz arcp contract afn <8 x float> %i.kwl, %i.kvg
  %i.kwy = fdiv reassoc nsz arcp contract afn <8 x float> %i.kww, %i.kwx ; 2 uses
  %i.kwz = fmul reassoc nsz arcp contract afn <8 x float> %i.kwr, %i.kvv
  %i.kxa = fmul reassoc nsz arcp contract afn <8 x float> %i.kwp, %i.kwd
  %i.kxb = fadd reassoc nsz arcp contract afn <8 x float> %i.kwz, %i.kxa
  %i.kxc = fadd reassoc nsz arcp contract afn <8 x float> %i.kwd, %i.kvv
  %i.kxd = fdiv reassoc nsz arcp contract afn <8 x float> %i.kxb, %i.kxc
  %i.kxe = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kup, zeroinitializer
  %i.kxf = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kup, splat (float 1.000000e+00)
  %i.kxg = select reassoc nsz arcp contract afn <8 x i1> %i.kxf, <8 x float> %i.kup, <8 x float> splat (float 1.000000e+00)
  %i.kxh = select reassoc nsz arcp contract afn <8 x i1> %i.kxe, <8 x float> %i.kxg, <8 x float> zeroinitializer
  %i.kxi = fsub reassoc nsz arcp contract afn <8 x float> %i.kxd, %i.kwy
  %i.kxj = fmul reassoc nsz arcp contract afn <8 x float> %i.kxi, %i.kxh
  %i.kxk = fadd reassoc nsz arcp contract afn <8 x float> %i.kwy, %strided.vec3227
  %i.kxl = fadd reassoc nsz arcp contract afn <8 x float> %i.kxk, %i.kxj
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kxl, <8 x ptr> align 4 %wide.gep3223, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3254 = add nuw i64 %index3212, 8     ; 2 uses
  %vec.ind.next3255 = add nuw nsw <8 x i64> %vec.ind3213, splat (i64 16)
  %i.kxm = icmp eq i64 %index.next3254, %n.vec3207
  br i1 %i.kxm, label %scalar.ph3204.preheader, label %vector.body3211, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3204, %.preheader828.i
  %i.kxn = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.kxo = icmp slt i32 %i.kxn, %i.jdu
  %indvars.iv.next1034.i = add i32 %indvars.iv1033.i, 112
  %indvars.iv.next1038.i = add i32 %indvars.iv1037.i, 112
  %indvars.iv.next1042.i = add i32 %indvars.iv1041.i, 112
  %indvar.next3053 = add i32 %indvar3052, 1
  br i1 %i.kxo, label %.preheader828.i, label %.preheader.i543.preheader

.preheader.i543.preheader:                        ; preds = %._crit_edge914.i
  %i.kxp = add i32 %smin1175, -9
  %i.kxq = add i32 %smin1175, -9
  br label %.preheader.i543

scalar.ph3204:                                    ; preds = %scalar.ph3204.preheader, %scalar.ph3204
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i, %scalar.ph3204 ], [ %indvars.iv1045.i.ph, %scalar.ph3204.preheader ] ; 7 uses
  %indvars.iv1043.i = phi i64 [ %indvars.iv.next1044.i, %scalar.ph3204 ], [ %indvars.iv1043.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1039.i = phi i64 [ %indvars.iv.next1040.i, %scalar.ph3204 ], [ %indvars.iv1039.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1035.i = phi i64 [ %indvars.iv.next1036.i, %scalar.ph3204 ], [ %indvars.iv1035.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.lbp, %scalar.ph3204 ], [ %.0754907.i.ph, %scalar.ph3204.preheader ]
  %i.kxr = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %indvars.iv1043.i
  %i.kxs = load float, ptr %i.kxr, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kxt = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %indvars.iv1039.i
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1
  %i.kxu = getelementptr inbounds nuw [4 x i8], ptr %i.jcu, i64 %indvars.iv1035.i
  %indvars.iv.next1036.i = add nuw nsw i64 %indvars.iv1035.i, 1
  %64 = load <2 x float>, ptr %i.kxt, align 4, !tbaa !12, !noalias !499
  %65 = load <2 x float>, ptr %i.kxu, align 4, !tbaa !12, !noalias !499
  %66 = shufflevector <2 x float> %65, <2 x float> %64, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %67 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %66)
  %i.kxv = fmul reassoc nsz arcp contract afn float %67, 2.500000e-01 ; 2 uses
  %i.kxw = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kxs
  %i.kxx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kxw)
  %i.kxy = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kxv
  %i.kxz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kxy)
  %i.kya = fcmp reassoc nsz arcp contract afn olt float %i.kxx, %i.kxz
  %i.kyb = select reassoc nsz arcp contract afn i1 %i.kya, float %i.kxv, float %i.kxs ; 3 uses
  %i.kyc = add nsw i64 %indvars.iv1045.i, -113    ; 2 uses
  %i.kyd = getelementptr inbounds [4 x i8], ptr %i.kse, i64 %i.kyc
  %i.kye = load float, ptr %i.kyd, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kyf = add nuw nsw i64 %indvars.iv1045.i, 113 ; 2 uses
  %i.kyg = getelementptr inbounds nuw [4 x i8], ptr %i.kse, i64 %i.kyf
  %i.kyh = load float, ptr %i.kyg, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kyi = fsub reassoc nsz arcp contract afn float %i.kye, %i.kyh
  %i.kyj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kyi)
  %i.kyk = fadd reassoc nsz arcp contract afn float %i.kyj, f0x3727C5AC ; 2 uses
  %i.kyl = getelementptr [4 x i8], ptr %i.kse, i64 %indvars.iv1045.i ; 5 uses
  %i.kym = getelementptr i8, ptr %i.kyl, i64 -1356
  %i.kyn = load float, ptr %i.kym, align 4, !tbaa !12, !noalias !499
  %i.kyo = fsub reassoc nsz arcp contract afn float %i.kye, %i.kyn
  %i.kyp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kyo)
  %i.kyq = fadd reassoc nsz arcp contract afn float %i.kyk, %i.kyp
  %i.kyr = getelementptr inbounds nuw [4 x i8], ptr %i.jdg, i64 %indvars.iv1045.i ; 5 uses
  %i.kys = load float, ptr %i.kyr, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.kyt = getelementptr i8, ptr %i.kyr, i64 -904
  %i.kyu = load float, ptr %i.kyt, align 4, !tbaa !12, !noalias !499
  %i.kyv = fsub reassoc nsz arcp contract afn float %i.kys, %i.kyu
  %i.kyw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kyv)
  %i.kyx = fadd reassoc nsz arcp contract afn float %i.kyq, %i.kyw ; 2 uses
  %i.kyy = add nsw i64 %indvars.iv1045.i, -111    ; 2 uses
  %i.kyz = getelementptr inbounds [4 x i8], ptr %i.kse, i64 %i.kyy
  %i.kza = load float, ptr %i.kyz, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kzb = add nuw nsw i64 %indvars.iv1045.i, 111 ; 2 uses
  %i.kzc = getelementptr inbounds nuw [4 x i8], ptr %i.kse, i64 %i.kzb
  %i.kzd = load float, ptr %i.kzc, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kze = fsub reassoc nsz arcp contract afn float %i.kza, %i.kzd
  %i.kzf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kze)
  %i.kzg = fadd reassoc nsz arcp contract afn float %i.kzf, f0x3727C5AC ; 2 uses
  %i.kzh = getelementptr i8, ptr %i.kyl, i64 -1332
  %i.kzi = load float, ptr %i.kzh, align 4, !tbaa !12, !noalias !499
  %i.kzj = fsub reassoc nsz arcp contract afn float %i.kza, %i.kzi
  %i.kzk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzj)
  %i.kzl = fadd reassoc nsz arcp contract afn float %i.kzg, %i.kzk
  %i.kzm = getelementptr i8, ptr %i.kyr, i64 -888
  %i.kzn = load float, ptr %i.kzm, align 4, !tbaa !12, !noalias !499
  %i.kzo = fsub reassoc nsz arcp contract afn float %i.kys, %i.kzn
  %i.kzp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzo)
  %i.kzq = fadd reassoc nsz arcp contract afn float %i.kzl, %i.kzp ; 2 uses
  %i.kzr = getelementptr inbounds nuw i8, ptr %i.kyl, i64 1332
  %i.kzs = load float, ptr %i.kzr, align 4, !tbaa !12, !noalias !499
  %i.kzt = fsub reassoc nsz arcp contract afn float %i.kzd, %i.kzs
  %i.kzu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzt)
  %i.kzv = fadd reassoc nsz arcp contract afn float %i.kzu, %i.kzg
  %i.kzw = getelementptr inbounds nuw i8, ptr %i.kyr, i64 888
  %i.kzx = load float, ptr %i.kzw, align 4, !tbaa !12, !noalias !499
  %i.kzy = fsub reassoc nsz arcp contract afn float %i.kys, %i.kzx
  %i.kzz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzy)
  %i.laa = fadd reassoc nsz arcp contract afn float %i.kzv, %i.kzz ; 2 uses
  %i.lab = getelementptr inbounds nuw i8, ptr %i.kyl, i64 1356
  %i.lac = load float, ptr %i.lab, align 4, !tbaa !12, !noalias !499
  %i.lad = fsub reassoc nsz arcp contract afn float %i.kyh, %i.lac
  %i.lae = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lad)
  %i.laf = fadd reassoc nsz arcp contract afn float %i.lae, %i.kyk
  %i.lag = getelementptr inbounds nuw i8, ptr %i.kyr, i64 904
  %i.lah = load float, ptr %i.lag, align 4, !tbaa !12, !noalias !499
  %i.lai = fsub reassoc nsz arcp contract afn float %i.kys, %i.lah
  %i.laj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lai)
  %i.lak = fadd reassoc nsz arcp contract afn float %i.laf, %i.laj ; 2 uses
  %i.lal = getelementptr inbounds [4 x i8], ptr %i.jdg, i64 %i.kyc
  %i.lam = load float, ptr %i.lal, align 4, !tbaa !12, !noalias !499
  %i.lan = fsub reassoc nsz arcp contract afn float %i.kye, %i.lam
  %i.lao = getelementptr inbounds [4 x i8], ptr %i.jdg, i64 %i.kyy
  %i.lap = load float, ptr %i.lao, align 4, !tbaa !12, !noalias !499
  %i.laq = fsub reassoc nsz arcp contract afn float %i.kza, %i.lap
  %i.lar = getelementptr inbounds nuw [4 x i8], ptr %i.jdg, i64 %i.kzb
  %i.las = load float, ptr %i.lar, align 4, !tbaa !12, !noalias !499
  %i.lat = fsub reassoc nsz arcp contract afn float %i.kzd, %i.las
  %i.lau = getelementptr inbounds nuw [4 x i8], ptr %i.jdg, i64 %i.kyf
  %i.lav = load float, ptr %i.lau, align 4, !tbaa !12, !noalias !499
  %i.law = fsub reassoc nsz arcp contract afn float %i.kyh, %i.lav
  %i.lax = fmul reassoc nsz arcp contract afn float %i.law, %i.kyx
  %i.lay = fmul reassoc nsz arcp contract afn float %i.lak, %i.lan
  %i.laz = fadd reassoc nsz arcp contract afn float %i.lax, %i.lay
  %i.lba = fadd reassoc nsz arcp contract afn float %i.lak, %i.kyx
  %i.lbb = fdiv reassoc nsz arcp contract afn float %i.laz, %i.lba ; 2 uses
  %i.lbc = fmul reassoc nsz arcp contract afn float %i.lat, %i.kzq
  %i.lbd = fmul reassoc nsz arcp contract afn float %i.laq, %i.laa
  %i.lbe = fadd reassoc nsz arcp contract afn float %i.lbc, %i.lbd
  %i.lbf = fadd reassoc nsz arcp contract afn float %i.laa, %i.kzq
  %i.lbg = fdiv reassoc nsz arcp contract afn float %i.lbe, %i.lbf
  %i.lbh = fcmp reassoc nsz arcp contract afn oge float %i.kyb, 0.000000e+00
  %i.lbi = fcmp reassoc nsz arcp contract afn ole float %i.kyb, 1.000000e+00
  %i.lbj = select reassoc nsz arcp contract afn i1 %i.lbi, float %i.kyb, float 1.000000e+00
  %i.lbk = select reassoc nsz arcp contract afn i1 %i.lbh, float %i.lbj, float 0.000000e+00
  %i.lbl = fsub reassoc nsz arcp contract afn float %i.lbg, %i.lbb
  %i.lbm = fmul reassoc nsz arcp contract afn float %i.lbl, %i.lbk
  %i.lbn = fadd reassoc nsz arcp contract afn float %i.lbb, %i.kys
  %i.lbo = fadd reassoc nsz arcp contract afn float %i.lbn, %i.lbm
  store float %i.lbo, ptr %i.kyl, align 4, !tbaa !12, !noalias !499
  %i.lbp = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1046.i = add nuw nsw i64 %indvars.iv1045.i, 2
  %indvars.iv.next1044.i = add nuw nsw i64 %indvars.iv1043.i, 1
  %i.lbq = icmp slt i32 %i.lbp, %i.kiu
  br i1 %i.lbq, label %scalar.ph3204, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lbr = icmp eq i32 %.0745937.i, 0
  %i.lbs = select i1 %i.lbr, i32 9, i32 10        ; 4 uses
  %i.lbt = add nuw nsw i32 %i.lbs, %i.jfg         ; 3 uses
  %i.lbu = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.lbu, i32 -9, i32 -10  ; 2 uses
  %i.lbv = add nsw i32 %i.jfi, %.neg793.i         ; 2 uses
  %i.lbw = icmp slt i32 %i.lbt, %i.lbv
  %or.cond944.i = select i1 %i.jed, i1 %i.lbw, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.lbx = add i32 %i.lbs, %indvars.iv1058.i
  %i.lby = shl i32 %i.lbx, 2
  %i.lbz = or disjoint i32 %i.lbs, %i.jeh
  %i.lca = add i32 %.neg793.i, %i.jfi
  %i.lcb = add i32 %i.lca, %i.jex
  %i.lcc = sub i32 %i.lcb, %i.lbs                 ; 2 uses
  %i.lcd = zext i32 %i.lcc to i64
  %i.lce = add nuw nsw i64 %i.lcd, 1              ; 2 uses
  %min.iters.check2936 = icmp ult i32 %i.lcc, 7
  %n.vec2938 = and i64 %i.lce, 8589934584         ; 5 uses
  %i.lcf = shl nuw nsw i64 %n.vec2938, 2
  %i.lcg = trunc i64 %n.vec2938 to i32
  %i.lch = add i32 %i.lbt, %i.lcg
  %cmp.n2949 = icmp eq i64 %i.lce, %n.vec2938
  br label %.lr.ph930.i

.preheader.i543:                                  ; preds = %.preheader.i543.preheader, %._crit_edge922.i
  %indvars.iv1051.i = phi i32 [ %indvars.iv.next1052.i, %._crit_edge922.i ], [ 452, %.preheader.i543.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.liu, %._crit_edge922.i ], [ 4, %.preheader.i543.preheader ] ; 2 uses
  %i.lci = shl i32 %.0744923.i, 2
  %i.lcj = and i32 %i.lci, 28
  %i.lck = or disjoint i32 %i.lcj, 2
  %i.lcl = lshr i32 %.fr1070, %i.lck
  %i.lcm = and i32 %i.lcl, 1                      ; 5 uses
  %i.lcn = or disjoint i32 %i.lcm, 4              ; 4 uses
  %i.lco = icmp slt i32 %i.lcn, %i.kiu
  br i1 %i.lco, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i543
  %i.lcp = or disjoint i32 %i.lcm, %indvars.iv1051.i
  %i.lcq = sext i32 %i.lcp to i64                 ; 5 uses
  %i.lcr = sub i32 %i.kxq, %i.lcm                 ; 2 uses
  %i.lcs = lshr i32 %i.lcr, 1
  %narrow4560 = add nuw i32 %i.lcs, 1
  %i.lct = zext i32 %narrow4560 to i64            ; 2 uses
  %min.iters.check2966 = icmp ult i32 %i.lcr, 16
  br i1 %min.iters.check2966, label %.lr.ph921.i.preheader, label %vector.memcheck2953

.lr.ph921.i.preheader:                            ; preds = %vector.body2972, %vector.memcheck2953, %.lr.ph921.preheader.i
  %indvars.iv1053.i.ph = phi i64 [ %i.lcq, %vector.memcheck2953 ], [ %i.lcq, %.lr.ph921.preheader.i ], [ %i.ldg, %vector.body2972 ]
  %.0743918.i.ph = phi i32 [ %i.lcn, %vector.memcheck2953 ], [ %i.lcn, %.lr.ph921.preheader.i ], [ %i.ldj, %vector.body2972 ]
  br label %.lr.ph921.i

vector.memcheck2953:                              ; preds = %.lr.ph921.preheader.i
  %i.lcu = or disjoint i32 %indvars.iv1051.i, %i.lcm
  %i.lcv = sext i32 %i.lcu to i64
  %i.lcw = shl nsw i64 %i.lcv, 2                  ; 3 uses
  %scevgep2955 = getelementptr i8, ptr %scevgep2954, i64 %i.lcw
  %i.lcx = sub i32 %i.kxp, %i.lcm
  %i.lcy = lshr i32 %i.lcx, 1
  %i.lcz = zext nneg i32 %i.lcy to i64
  %i.lda = shl nuw nsw i64 %i.lcz, 3
  %i.ldb = add nsw i64 %i.lda, %i.lcw             ; 2 uses
  %scevgep2957 = getelementptr i8, ptr %scevgep2956, i64 %i.ldb
  %scevgep2959 = getelementptr i8, ptr %scevgep2958, i64 %i.lcw
  %scevgep2961 = getelementptr i8, ptr %scevgep2960, i64 %i.ldb
  %bound02962 = icmp ult ptr %scevgep2955, %scevgep2961
  %bound12963 = icmp ult ptr %scevgep2959, %scevgep2957
  %found.conflict2964 = and i1 %bound02962, %bound12963
  br i1 %found.conflict2964, label %.lr.ph921.i.preheader, label %vector.ph2967

vector.ph2967:                                    ; preds = %vector.memcheck2953
  %i.ldc = and i64 %i.lct, 7                      ; 2 uses
  %i.ldd = icmp eq i64 %i.ldc, 0
  %i.lde = select i1 %i.ldd, i64 8, i64 %i.ldc
  %n.vec2968 = sub nsw i64 %i.lct, %i.lde         ; 3 uses
  %i.ldf = shl nsw i64 %n.vec2968, 1
  %i.ldg = add nsw i64 %i.ldf, %i.lcq
  %i.ldh = trunc i64 %n.vec2968 to i32
  %i.ldi = shl i32 %i.ldh, 1
  %i.ldj = add i32 %i.lcn, %i.ldi
  %broadcast.splatinsert2969 = insertelement <8 x i64> poison, i64 %i.lcq, i64 0
  %broadcast.splat2970 = shufflevector <8 x i64> %broadcast.splatinsert2969, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2971 = add nuw nsw <8 x i64> %broadcast.splat2970, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body2972

vector.body2972:                                  ; preds = %vector.body2972, %vector.ph2967
  %index2973 = phi i64 [ 0, %vector.ph2967 ], [ %index.next3035, %vector.body2972 ] ; 2 uses
  %vec.ind2974 = phi <8 x i64> [ %induction2971, %vector.ph2967 ], [ %vec.ind.next3036, %vector.body2972 ] ; 3 uses
  %i.ldk = shl nuw i64 %index2973, 1
  %i.ldl = add nuw i64 %i.ldk, %i.lcq             ; 7 uses
  %i.ldm = getelementptr inbounds nuw [4 x i8], ptr %i.jct, i64 %i.ldl ; 5 uses
  %wide.vec2975 = load <16 x float>, ptr %i.ldm, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2976 = shufflevector <16 x float> %wide.vec2975, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
end_hunk_5
begin_hunk_6_@process:bb.a
  %spec.select.i.us.i.1 = select reassoc nsz arcp contract afn i1 %i.pyp, float 0.000000e+00, float %i.pyo
  %i.pyq = getelementptr inbounds nuw [4 x i8], ptr %i.ptd, i64 %.reass4859
  store float %spec.select.i.us.i.1, ptr %i.pyq, align 4, !tbaa !12
  %i.pyr = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %.reass4859
  store float 0.000000e+00, ptr %i.pyr, align 4, !tbaa !12
  %i.pys = add nuw i64 %.0102113.i.us.i, 2        ; 2 uses
  %exitcond129.not.i.us.i.1 = icmp eq i64 %i.pys, %i.aoc
  br i1 %exitcond129.not.i.us.i.1, label %._crit_edge.i.i585, label %.lr.ph.split.i.us.i, !llvm.loop !402

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader4606.new
  %.0102113.us.i.i = phi i64 [ %.0102113.us.i.i.unr, %.lr.ph.split.us.i.i.preheader4606.new ], [ %i.pzw, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.pyt = add i64 %.0102113.us.i.i, %i.ptr       ; 3 uses
  %.idx106.us.i.i = shl i64 %i.pyt, 4
  %i.pyu = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.us.i.i ; 3 uses
  %i.pyv = load float, ptr %i.pyu, align 4, !tbaa !12
  %i.pyw = fmul reassoc nsz arcp contract afn float %i.pyv, 2.126710e-01
  %i.pyx = getelementptr inbounds nuw i8, ptr %i.pyu, i64 4
  %i.pyy = load float, ptr %i.pyx, align 4, !tbaa !12
  %i.pyz = fmul reassoc nsz arcp contract afn float %i.pyy, 7.151600e-01
  %i.pza = getelementptr inbounds nuw i8, ptr %i.pyu, i64 8
  %i.pzb = load float, ptr %i.pza, align 4, !tbaa !12
  %i.pzc = fmul reassoc nsz arcp contract afn float %i.pzb, 7.216900e-02
  %i.pzd = fadd reassoc nsz arcp contract afn float %i.pyz, %i.pyw
  %i.pze = fadd reassoc nsz arcp contract afn float %i.pzd, %i.pzc ; 2 uses
  %i.pzf = fcmp reassoc nsz arcp contract afn olt float %i.pze, 0.000000e+00
  %spec.select.us.i.i = select reassoc nsz arcp contract afn i1 %i.pzf, float 0.000000e+00, float %i.pze
  %i.pzg = getelementptr inbounds nuw [4 x i8], ptr %i.ptd, i64 %i.pyt
  store float %spec.select.us.i.i, ptr %i.pzg, align 4, !tbaa !12
  %i.pzh = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %i.pyt
  store float 0.000000e+00, ptr %i.pzh, align 4, !tbaa !12
  %.reass4857 = add i64 %.0102113.us.i.i, %invariant.op4856 ; 3 uses
  %.idx106.us.i.i.1 = shl i64 %.reass4857, 4
  %i.pzi = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.us.i.i.1 ; 3 uses
  %i.pzj = load float, ptr %i.pzi, align 4, !tbaa !12
  %i.pzk = fmul reassoc nsz arcp contract afn float %i.pzj, 2.126710e-01
  %i.pzl = getelementptr inbounds nuw i8, ptr %i.pzi, i64 4
  %i.pzm = load float, ptr %i.pzl, align 4, !tbaa !12
  %i.pzn = fmul reassoc nsz arcp contract afn float %i.pzm, 7.151600e-01
  %i.pzo = getelementptr inbounds nuw i8, ptr %i.pzi, i64 8
  %i.pzp = load float, ptr %i.pzo, align 4, !tbaa !12
  %i.pzq = fmul reassoc nsz arcp contract afn float %i.pzp, 7.216900e-02
  %i.pzr = fadd reassoc nsz arcp contract afn float %i.pzn, %i.pzk
  %i.pzs = fadd reassoc nsz arcp contract afn float %i.pzr, %i.pzq ; 2 uses
  %i.pzt = fcmp reassoc nsz arcp contract afn olt float %i.pzs, 0.000000e+00
  %spec.select.us.i.i.1 = select reassoc nsz arcp contract afn i1 %i.pzt, float 0.000000e+00, float %i.pzs
  %i.pzu = getelementptr inbounds nuw [4 x i8], ptr %i.ptd, i64 %.reass4857
  store float %spec.select.us.i.i.1, ptr %i.pzu, align 4, !tbaa !12
  %i.pzv = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %.reass4857
  store float 0.000000e+00, ptr %i.pzv, align 4, !tbaa !12
  %i.pzw = add nuw i64 %.0102113.us.i.i, 2        ; 2 uses
  %exitcond.not.i.i584.1 = icmp eq i64 %i.pzw, %i.aoc
  br i1 %exitcond.not.i.i584.1, label %._crit_edge.i.i585, label %.lr.ph.split.us.i.i, !llvm.loop !403

._crit_edge.i.i585:                               ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %.lr.ph.split.i.us.i.prol.loopexit, %.lr.ph.split.i.us.i, %bb.qv, %bb.qq, %bb.qp
  %i.pzx = add nuw i64 %.0103117.i.i, 1           ; 2 uses
  %exitcond149.not.i.i = icmp eq i64 %i.pzx, %i.psb
  br i1 %exitcond149.not.i.i, label %_prepare_blend.exit.i, label %.preheader.i.i583

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.preheader.i, %bb.qv
  %.0102113.i.i = phi i64 [ %i.qbv, %bb.qv ], [ 2, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %i.pzy = add i64 %.0102113.i.i, %i.ptr          ; 9 uses
  %.idx106.i.i = shl i64 %i.pzy, 4                ; 2 uses
  %i.pzz = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.i.i ; 3 uses
  %i.qaa = load float, ptr %i.pzz, align 4, !tbaa !12
  %i.qab = fmul reassoc nsz arcp contract afn float %i.qaa, 2.126710e-01
  %i.qac = getelementptr inbounds nuw i8, ptr %i.pzz, i64 4
  %i.qad = load float, ptr %i.qac, align 4, !tbaa !12
  %i.qae = fmul reassoc nsz arcp contract afn float %i.qad, 7.151600e-01
  %i.qaf = getelementptr inbounds nuw i8, ptr %i.pzz, i64 8
  %i.qag = load float, ptr %i.qaf, align 4, !tbaa !12
  %i.qah = fmul reassoc nsz arcp contract afn float %i.qag, 7.216900e-02
  %i.qai = fadd reassoc nsz arcp contract afn float %i.qae, %i.qab
  %i.qaj = fadd reassoc nsz arcp contract afn float %i.qai, %i.qah ; 2 uses
  %i.qak = fcmp reassoc nsz arcp contract afn olt float %i.qaj, 0.000000e+00
  %spec.select.i.i609 = select reassoc nsz arcp contract afn i1 %i.qak, float 0.000000e+00, float %i.qaj ; 3 uses
  %i.qal = getelementptr inbounds nuw [4 x i8], ptr %i.ptd, i64 %i.pzy
  store float %spec.select.i.i609, ptr %i.qal, align 4, !tbaa !12
  %i.qam = icmp ult i64 %.0102113.i.i, %i.aqv
  br i1 %i.qam, label %bb.qr, label %bb.qu

bb.qr:                                            ; preds = %.lr.ph.split.i.i
  %i.qan = trunc i64 %.0102113.i.i to i32         ; 2 uses
  br i1 %i.bd, label %fcol.exit.thread.i.i, label %fcol.exit.i.i

fcol.exit.thread.i.i:                             ; preds = %bb.qr
  %i.qao = add nsw i32 %i.qan, 600
  %i.qap = srem i32 %i.qao, 6
  %i.qaq = sext i32 %i.qap to i64
  %i.qar = getelementptr inbounds i8, ptr %i.pua, i64 %i.qaq
  %i.qas = load i8, ptr %i.qar, align 1, !tbaa !133
  %i.qat = zext i8 %i.qas to i32
  br label %.split.i.i

fcol.exit.i.i:                                    ; preds = %bb.qr
  %i.qau = and i32 %i.qan, 1
  %.tr.i.i.i.i = or disjoint i32 %i.qau, %i.ptw
  %i.qav = shl nuw nsw i32 %.tr.i.i.i.i, 1
  %i.qaw = lshr i32 %.fr1070, %i.qav
  %i.qax = and i32 %i.qaw, 3
  br i1 %i.bh, label %bb.qs, label %.split.i.i

.split.i.i:                                       ; preds = %fcol.exit.i.i, %fcol.exit.thread.i.i
  %.0.i109.i.i = phi i32 [ %i.qat, %fcol.exit.thread.i.i ], [ %i.qax, %fcol.exit.i.i ]
  %i.qay = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.pzy
  %i.qaz = load float, ptr %i.qay, align 4, !tbaa !12
  %i.qba = zext nneg i32 %.0.i109.i.i to i64
  %i.qbb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qba
  %i.qbc = load float, ptr %i.qbb, align 4, !tbaa !12
  %i.qbd = fcmp reassoc nsz arcp contract afn ogt float %i.qaz, %i.qbc
  %i.qbe = fcmp reassoc nsz arcp contract afn olt float %spec.select.i.i609, 1.000000e-03
  %or.cond110.i.i = select i1 %i.qbd, i1 true, i1 %i.qbe
  br i1 %or.cond110.i.i, label %bb.qt, label %bb.qv

bb.qs:                                            ; preds = %fcol.exit.i.i
  %i.qbf = getelementptr inbounds nuw i8, ptr %i.axo, i64 %.idx106.i.i
  %i.qbg = load float, ptr %i.qbf, align 4, !tbaa !12
  %i.qbh = fcmp reassoc nsz arcp contract afn ogt float %i.qbg, f0x3F666666
  %.old.i.i = fcmp reassoc nsz arcp contract afn olt float %spec.select.i.i609, 1.000000e-03
  %or.cond111.i.i = select i1 %i.qbh, i1 true, i1 %.old.i.i
  br i1 %or.cond111.i.i, label %bb.qt, label %bb.qv

bb.qt:                                            ; preds = %bb.qs, %.split.i.i
  %gep116.i.i = getelementptr [4 x i8], ptr %invariant.gep115.i.i, i64 %i.pzy ; 2 uses
  %i.qbi = getelementptr i8, ptr %gep116.i.i, i64 4
  store float 0.000000e+00, ptr %i.qbi, align 4, !tbaa !12
  %i.qbj = getelementptr i8, ptr %gep116.i.i, i64 -4
  store <2 x float> zeroinitializer, ptr %i.qbj, align 4, !tbaa !12
  %gep.i.i610 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.pzy
  %i.qbk = getelementptr i8, ptr %gep.i.i610, i64 -8
  %i.qbl = getelementptr [4 x i8], ptr %i.ptc, i64 %i.pzy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qbk, i8 0, i64 20, i1 false)
  %i.qbm = getelementptr i8, ptr %i.qbl, i64 -8
  %i.qbn = sub i64 %i.pzy, %i.aoc
  %i.qbo = getelementptr [4 x i8], ptr %i.ptc, i64 %i.qbn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qbm, i8 0, i64 20, i1 false)
  %i.qbp = getelementptr i8, ptr %i.qbo, i64 -8
  %i.qbq = sub i64 %i.pzy, %i.aqw
  %i.qbr = getelementptr [4 x i8], ptr %i.ptc, i64 %i.qbq ; 2 uses
  %i.qbs = getelementptr i8, ptr %i.qbr, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.qbp, i8 0, i64 20, i1 false)
  store float 0.000000e+00, ptr %i.qbs, align 4, !tbaa !12
  %i.qbt = getelementptr i8, ptr %i.qbr, i64 -4
  store <2 x float> zeroinitializer, ptr %i.qbt, align 4, !tbaa !12
  br label %bb.qv

bb.qu:                                            ; preds = %.lr.ph.split.i.i
  %i.qbu = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %i.pzy
  store float 0.000000e+00, ptr %i.qbu, align 4, !tbaa !12
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.qt, %bb.qs, %.split.i.i
  %i.qbv = add nuw i64 %.0102113.i.i, 1           ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %i.qbv, %i.aoc
  br i1 %exitcond129.not.i.i, label %._crit_edge.i.i585, label %.lr.ph.split.i.i, !llvm.loop !404

_prepare_blend.exit.i:                            ; preds = %._crit_edge.i.i585, %.preheader.lr.ph.i.i
  %i.qbw = getelementptr inbounds nuw i8, ptr %.val453, i64 128
  %i.qbx = load float, ptr %i.qbw, align 8, !tbaa !462 ; 2 uses
  %i.qby = fmul reassoc nsz arcp contract afn float %i.qbx, %i.qbx
  %i.qbz = fmul reassoc nsz arcp contract afn float %i.qby, f0x42700001
  %i.qca = fadd reassoc nsz arcp contract afn float %i.qbz, -2.500000e+00
  %i.qcb = icmp sgt i32 %i.axe, 0
  br i1 %i.qcb, label %.lr.ph115.i.i, label %_modify_blend.exit.i

.lr.ph115.i.i:                                    ; preds = %_prepare_blend.exit.i
  %i.qcc = add nsw i32 %i.axe, -3                 ; 2 uses
  br i1 %i.aqh, label %.lr.ph.preheader.i.i, label %_modify_blend.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph115.i.i
  %i.qcd = sext i32 %i.qcc to i64
  %wide.trip.count134.i.i = zext nneg i32 %i.axe to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i193.i, %.lr.ph.preheader.i.i
  %indvars.iv131.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next132.i.i, %._crit_edge.i193.i ] ; 4 uses
  %i.qce = icmp sgt i64 %indvars.iv131.i.i, %i.qcd
  %i.qcf = trunc nuw nsw i64 %indvars.iv131.i.i to i32
  %i.qcg = tail call i32 @llvm.umax.i32(i32 %i.qcf, i32 2)
  %i.qch = select i1 %i.qce, i32 %i.qcc, i32 %i.qcg ; 4 uses
  %i.qci = mul nuw nsw i64 %indvars.iv131.i.i, %i.aoc
  %i.qcj = add i32 %i.qch, -1
  %i.qck = add i32 %i.qch, 2                      ; 2 uses
  %i.qcl = add nsw i32 %i.qch, -2
  %i.qcm = sext i32 %i.qcl to i64
  %i.qcn = mul nsw i64 %i.qcm, %i.aoc
  %i.qco = getelementptr [4 x i8], ptr %i.ptd, i64 %i.qcn ; 3 uses
  %i.qcp = sext i32 %i.qck to i64
  %i.qcq = mul nsw i64 %i.qcp, %i.aoc
  %i.qcr = getelementptr [4 x i8], ptr %i.ptd, i64 %i.qcq ; 3 uses
  %i.qcs = sext i32 %i.qcj to i64                 ; 3 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.qch, i32 %i.qck)
  %i.qct = mul nsw i64 %i.qcs, %i.aoc
  %i.qcu = getelementptr [4 x i8], ptr %i.ptd, i64 %i.qct ; 2 uses
  %indvars.iv.next121.i.i = add nsw i64 %i.qcs, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next121.i.i to i32
  %exitcond.not.i190.i = icmp eq i32 %smax.i.i, %lftr.wideiv.i.i ; 2 uses
  %i.qcv = mul nsw i64 %indvars.iv.next121.i.i, %i.aoc
  %i.qcw = getelementptr [4 x i8], ptr %i.ptd, i64 %i.qcv ; 3 uses
  %indvars.iv.next121.1.i.i = add nsw i64 %i.qcs, 2
  %i.qcx = mul nsw i64 %indvars.iv.next121.1.i.i, %i.aoc
  %i.qcy = getelementptr [4 x i8], ptr %i.ptd, i64 %i.qcx ; 2 uses
  br label %bb.qw

._crit_edge.i193.i:                               ; preds = %.loopexit4523
  %indvars.iv.next132.i.i = add nuw nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %exitcond135.not.i.i = icmp eq i64 %indvars.iv.next132.i.i, %wide.trip.count134.i.i
  br i1 %exitcond135.not.i.i, label %_modify_blend.exit.i, label %.lr.ph.i.i

bb.qw:                                            ; preds = %.loopexit4523, %.lr.ph.i.i
  %indvars.iv127.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next128.i.i, %.loopexit4523 ] ; 4 uses
  %i.qcz = icmp sgt i64 %indvars.iv127.i.i, %i.aqy
  %i.qda = trunc nuw nsw i64 %indvars.iv127.i.i to i32
  %i.qdb = tail call i32 @llvm.umax.i32(i32 %i.qda, i32 2)
  %i.qdc = select i1 %i.qcz, i32 %i.aqx, i32 %i.qdb ; 4 uses
  %i.qdd = add i32 %i.qdc, -2                     ; 2 uses
  %i.qde = sext i32 %i.qdd to i64                 ; 6 uses
  %i.qdf = getelementptr [4 x i8], ptr %i.qcu, i64 %i.qde ; 4 uses
  %i.qdg = load float, ptr %i.qdf, align 4, !tbaa !12 ; 5 uses
  %i.qdh = fmul reassoc nsz arcp contract afn float %i.qdg, %i.qdg ; 3 uses
  %indvars.iv.next.i.i606 = add nsw i64 %i.qde, 1 ; 2 uses
  %i.qdi = add nsw i32 %i.qdc, 2
  %i.qdj = icmp slt i32 %i.qdd, %i.qdi
  br i1 %i.qdj, label %bb.qx, label %.thread2.i

iter.check1936:                                   ; preds = %bb.qz, %bb.qy, %.thread2.i, %bb.qx
  %.lcssa117.lcssa.i.i = phi float [ %i.qgk, %bb.qx ], [ %i.qgu, %bb.qy ], [ %op.rdx4565.a, %bb.qz ], [ %i.qdg, %.thread2.i ] ; 3 uses
  %.lcssa.lcssa.i.i = phi float [ %i.qgm, %bb.qx ], [ %i.qgw, %bb.qy ], [ %op.rdx4568, %bb.qz ], [ %i.qdh, %.thread2.i ] ; 3 uses
  %i.qdk = add i32 %i.qdc, -1
  %i.qdl = sext i32 %i.qdk to i64                 ; 7 uses
  %i.qdm = sext i32 %i.qdc to i64                 ; 2 uses
  %i.qdn = add nsw i64 %i.qdm, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.qdn, i64 %i.qdl)
  %i.qdo = add i64 %smax, 1
  %i.qdp = sub i64 %i.qdo, %i.qdl                 ; 7 uses
  %min.iters.check1903 = icmp ult i64 %i.qdp, 8
  br i1 %min.iters.check1903, label %vec.epilog.scalar.ph1937.preheader, label %vector.main.loop.iter.check1904

vector.main.loop.iter.check1904:                  ; preds = %iter.check1936
  %min.iters.check1905 = icmp ult i64 %i.qdp, 32
  br i1 %min.iters.check1905, label %vec.epilog.ph1940, label %vector.ph1906

vector.ph1906:                                    ; preds = %vector.main.loop.iter.check1904
  %i.qdq = and i64 %i.qdp, 24
  %n.vec1907 = and i64 %i.qdp, -32                ; 4 uses
  %i.qdr = add i64 %n.vec1907, %i.qdl
  %i.qds = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.lcssa.lcssa.i.i, i64 0
  %i.qdt = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.lcssa117.lcssa.i.i, i64 0
  br label %vector.body1908

vector.body1908:                                  ; preds = %vector.ph1906, %vector.body1908
  %index1909 = phi i64 [ 0, %vector.ph1906 ], [ %index.next1925, %vector.body1908 ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.qds, %vector.ph1906 ], [ %i.qex, %vector.body1908 ]
  %vec.phi1910 = phi <8 x float> [ zeroinitializer, %vector.ph1906 ], [ %i.qey, %vector.body1908 ]
  %vec.phi1911 = phi <8 x float> [ zeroinitializer, %vector.ph1906 ], [ %i.qez, %vector.body1908 ]
  %vec.phi1912 = phi <8 x float> [ zeroinitializer, %vector.ph1906 ], [ %i.qfa, %vector.body1908 ]
  %vec.phi1913 = phi <8 x float> [ %i.qdt, %vector.ph1906 ], [ %i.qep, %vector.body1908 ]
  %vec.phi1914 = phi <8 x float> [ zeroinitializer, %vector.ph1906 ], [ %i.qeq, %vector.body1908 ]
  %vec.phi1915 = phi <8 x float> [ zeroinitializer, %vector.ph1906 ], [ %i.qer, %vector.body1908 ]
  %vec.phi1916 = phi <8 x float> [ zeroinitializer, %vector.ph1906 ], [ %i.qes, %vector.body1908 ]
  %i.qdu = add i64 %index1909, %i.qdl             ; 2 uses
  %i.qdv = getelementptr [4 x i8], ptr %i.qco, i64 %i.qdu ; 4 uses
  %i.qdw = getelementptr i8, ptr %i.qdv, i64 32
  %i.qdx = getelementptr i8, ptr %i.qdv, i64 64
  %i.qdy = getelementptr i8, ptr %i.qdv, i64 96
  %wide.load1917 = load <8 x float>, ptr %i.qdv, align 4, !tbaa !12 ; 3 uses
  %wide.load1918 = load <8 x float>, ptr %i.qdw, align 4, !tbaa !12 ; 3 uses
  %wide.load1919 = load <8 x float>, ptr %i.qdx, align 4, !tbaa !12 ; 3 uses
  %wide.load1920 = load <8 x float>, ptr %i.qdy, align 4, !tbaa !12 ; 3 uses
  %i.qdz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1917, %vec.phi1913
  %i.qea = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1918, %vec.phi1914
  %i.qeb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1919, %vec.phi1915
  %i.qec = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1920, %vec.phi1916
  %i.qed = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1917, %wide.load1917
  %i.qee = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1918, %wide.load1918
  %i.qef = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1919, %wide.load1919
  %i.qeg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1920, %wide.load1920
  %i.qeh = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi, %i.qed
  %i.qei = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1910, %i.qee
  %i.qej = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1911, %i.qef
  %i.qek = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1912, %i.qeg
  %i.qel = getelementptr [4 x i8], ptr %i.qcr, i64 %i.qdu ; 4 uses
  %i.qem = getelementptr i8, ptr %i.qel, i64 32
  %i.qen = getelementptr i8, ptr %i.qel, i64 64
  %i.qeo = getelementptr i8, ptr %i.qel, i64 96
  %wide.load1921 = load <8 x float>, ptr %i.qel, align 4, !tbaa !12 ; 3 uses
  %wide.load1922 = load <8 x float>, ptr %i.qem, align 4, !tbaa !12 ; 3 uses
  %wide.load1923 = load <8 x float>, ptr %i.qen, align 4, !tbaa !12 ; 3 uses
  %wide.load1924 = load <8 x float>, ptr %i.qeo, align 4, !tbaa !12 ; 3 uses
  %i.qep = fadd reassoc nsz arcp contract afn <8 x float> %i.qdz, %wide.load1921 ; 2 uses
  %i.qeq = fadd reassoc nsz arcp contract afn <8 x float> %i.qea, %wide.load1922 ; 2 uses
  %i.qer = fadd reassoc nsz arcp contract afn <8 x float> %i.qeb, %wide.load1923 ; 2 uses
  %i.qes = fadd reassoc nsz arcp contract afn <8 x float> %i.qec, %wide.load1924 ; 2 uses
  %i.qet = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1921, %wide.load1921
  %i.qeu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1922, %wide.load1922
  %i.qev = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1923, %wide.load1923
  %i.qew = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1924, %wide.load1924
  %i.qex = fadd reassoc nsz arcp contract afn <8 x float> %i.qeh, %i.qet ; 2 uses
  %i.qey = fadd reassoc nsz arcp contract afn <8 x float> %i.qei, %i.qeu ; 2 uses
  %i.qez = fadd reassoc nsz arcp contract afn <8 x float> %i.qej, %i.qev ; 2 uses
  %i.qfa = fadd reassoc nsz arcp contract afn <8 x float> %i.qek, %i.qew ; 2 uses
  %index.next1925 = add nuw i64 %index1909, 32    ; 2 uses
  %i.qfb = icmp eq i64 %index.next1925, %n.vec1907
  br i1 %i.qfb, label %middle.block1926, label %vector.body1908, !llvm.loop !405

middle.block1926:                                 ; preds = %vector.body1908
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.qey, %i.qex
  %bin.rdx1927 = fadd reassoc nsz arcp contract afn <8 x float> %i.qez, %bin.rdx
  %bin.rdx1928 = fadd reassoc nsz arcp contract afn <8 x float> %i.qfa, %bin.rdx1927
  %i.qfc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1928) ; 3 uses
  %bin.rdx1929 = fadd reassoc nsz arcp contract afn <8 x float> %i.qeq, %i.qep
  %bin.rdx1930 = fadd reassoc nsz arcp contract afn <8 x float> %i.qer, %bin.rdx1929
  %bin.rdx1931 = fadd reassoc nsz arcp contract afn <8 x float> %i.qes, %bin.rdx1930
  %i.qfd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx1931) ; 3 uses
  %cmp.n1932 = icmp eq i64 %i.qdp, %n.vec1907
  br i1 %cmp.n1932, label %.loopexit4523, label %vec.epilog.iter.check1938

vec.epilog.iter.check1938:                        ; preds = %middle.block1926
  %min.epilog.iters.check1939 = icmp eq i64 %i.qdq, 0
  br i1 %min.epilog.iters.check1939, label %vec.epilog.scalar.ph1937.preheader, label %vec.epilog.ph1940, !prof !552

vec.epilog.ph1940:                                ; preds = %vector.main.loop.iter.check1904, %vec.epilog.iter.check1938
  %vec.epilog.resume.val1933 = phi i64 [ %n.vec1907, %vec.epilog.iter.check1938 ], [ 0, %vector.main.loop.iter.check1904 ]
  %bc.merge.rdx = phi float [ %i.qfc, %vec.epilog.iter.check1938 ], [ %.lcssa.lcssa.i.i, %vector.main.loop.iter.check1904 ]
  %bc.merge.rdx1935 = phi float [ %i.qfd, %vec.epilog.iter.check1938 ], [ %.lcssa117.lcssa.i.i, %vector.main.loop.iter.check1904 ]
  %n.vec1941 = and i64 %i.qdp, -8                 ; 3 uses
  %i.qfe = add i64 %n.vec1941, %i.qdl
  %i.qff = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.qfg = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1935, i64 0
  br label %vec.epilog.vector.body1942

vec.epilog.vector.body1942:                       ; preds = %vec.epilog.vector.body1942, %vec.epilog.ph1940
  %index1943 = phi i64 [ %vec.epilog.resume.val1933, %vec.epilog.ph1940 ], [ %index.next1948, %vec.epilog.vector.body1942 ] ; 2 uses
  %vec.phi1944 = phi <8 x float> [ %i.qff, %vec.epilog.ph1940 ], [ %i.qfp, %vec.epilog.vector.body1942 ]
  %vec.phi1945 = phi <8 x float> [ %i.qfg, %vec.epilog.ph1940 ], [ %i.qfn, %vec.epilog.vector.body1942 ]
  %i.qfh = add i64 %index1943, %i.qdl             ; 2 uses
  %i.qfi = getelementptr [4 x i8], ptr %i.qco, i64 %i.qfh
  %wide.load1946 = load <8 x float>, ptr %i.qfi, align 4, !tbaa !12 ; 3 uses
  %i.qfj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1946, %vec.phi1945
  %i.qfk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1946, %wide.load1946
  %i.qfl = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi1944, %i.qfk
  %i.qfm = getelementptr [4 x i8], ptr %i.qcr, i64 %i.qfh
  %wide.load1947 = load <8 x float>, ptr %i.qfm, align 4, !tbaa !12 ; 3 uses
  %i.qfn = fadd reassoc nsz arcp contract afn <8 x float> %i.qfj, %wide.load1947 ; 2 uses
  %i.qfo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load1947, %wide.load1947
  %i.qfp = fadd reassoc nsz arcp contract afn <8 x float> %i.qfl, %i.qfo ; 2 uses
  %index.next1948 = add nuw i64 %index1943, 8     ; 2 uses
  %i.qfq = icmp eq i64 %index.next1948, %n.vec1941
  br i1 %i.qfq, label %vec.epilog.middle.block1949, label %vec.epilog.vector.body1942, !llvm.loop !406

vec.epilog.middle.block1949:                      ; preds = %vec.epilog.vector.body1942
  %i.qfr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.qfp) ; 2 uses
  %i.qfs = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.qfn) ; 2 uses
  %cmp.n1950 = icmp eq i64 %i.qdp, %n.vec1941
  br i1 %cmp.n1950, label %.loopexit4523, label %vec.epilog.scalar.ph1937.preheader

vec.epilog.scalar.ph1937.preheader:               ; preds = %iter.check1936, %vec.epilog.iter.check1938, %vec.epilog.middle.block1949
  %indvars.iv.i.i607.ph = phi i64 [ %i.qdl, %iter.check1936 ], [ %i.qdr, %vec.epilog.iter.check1938 ], [ %i.qfe, %vec.epilog.middle.block1949 ]
  %.2110.i.i.ph = phi float [ %.lcssa.lcssa.i.i, %iter.check1936 ], [ %i.qfc, %vec.epilog.iter.check1938 ], [ %i.qfr, %vec.epilog.middle.block1949 ]
  %.294109.i.i.ph = phi float [ %.lcssa117.lcssa.i.i, %iter.check1936 ], [ %i.qfd, %vec.epilog.iter.check1938 ], [ %i.qfs, %vec.epilog.middle.block1949 ]
  br label %vec.epilog.scalar.ph1937

bb.qx:                                            ; preds = %bb.qw
  %i.qft = getelementptr [4 x i8], ptr %i.qcu, i64 %indvars.iv.next.i.i606
  %i.qfu = load float, ptr %i.qft, align 4, !tbaa !12 ; 3 uses
  %i.qfv = fadd reassoc nsz arcp contract afn float %i.qfu, %i.qdg
  %i.qfw = fmul reassoc nsz arcp contract afn float %i.qfu, %i.qfu
  %i.qfx = fadd reassoc nsz arcp contract afn float %i.qfw, %i.qdh
  %i.qfy = getelementptr i8, ptr %i.qdf, i64 8
  %i.qfz = load float, ptr %i.qfy, align 4, !tbaa !12 ; 3 uses
  %i.qga = fadd reassoc nsz arcp contract afn float %i.qfv, %i.qfz
  %i.qgb = fmul reassoc nsz arcp contract afn float %i.qfz, %i.qfz
  %i.qgc = fadd reassoc nsz arcp contract afn float %i.qfx, %i.qgb
  %i.qgd = getelementptr i8, ptr %i.qdf, i64 12
  %i.qge = load float, ptr %i.qgd, align 4, !tbaa !12 ; 3 uses
  %i.qgf = fadd reassoc nsz arcp contract afn float %i.qga, %i.qge
  %i.qgg = fmul reassoc nsz arcp contract afn float %i.qge, %i.qge
  %i.qgh = fadd reassoc nsz arcp contract afn float %i.qgc, %i.qgg
  %i.qgi = getelementptr i8, ptr %i.qdf, i64 16
  %i.qgj = load float, ptr %i.qgi, align 4, !tbaa !12 ; 3 uses
  %i.qgk = fadd reassoc nsz arcp contract afn float %i.qgf, %i.qgj ; 2 uses
  %i.qgl = fmul reassoc nsz arcp contract afn float %i.qgj, %i.qgj
  %i.qgm = fadd reassoc nsz arcp contract afn float %i.qgh, %i.qgl ; 2 uses
  br i1 %exitcond.not.i190.i, label %iter.check1936, label %bb.qz

.thread2.i:                                       ; preds = %bb.qw
  br i1 %exitcond.not.i190.i, label %iter.check1936, label %bb.qy

bb.qy:                                            ; preds = %.thread2.i
  %i.qgn = getelementptr [4 x i8], ptr %i.qcw, i64 %i.qde
  %i.qgo = load float, ptr %i.qgn, align 4, !tbaa !12 ; 3 uses
  %i.qgp = fadd reassoc nsz arcp contract afn float %i.qgo, %i.qdg
  %i.qgq = fmul reassoc nsz arcp contract afn float %i.qgo, %i.qgo
  %i.qgr = fadd reassoc nsz arcp contract afn float %i.qgq, %i.qdh
  %i.qgs = getelementptr [4 x i8], ptr %i.qcy, i64 %i.qde
  %i.qgt = load float, ptr %i.qgs, align 4, !tbaa !12 ; 3 uses
  %i.qgu = fadd reassoc nsz arcp contract afn float %i.qgp, %i.qgt
  %i.qgv = fmul reassoc nsz arcp contract afn float %i.qgt, %i.qgt
  %i.qgw = fadd reassoc nsz arcp contract afn float %i.qgr, %i.qgv
  br label %iter.check1936

bb.qz:                                            ; preds = %bb.qx
  %i.qgx = getelementptr [4 x i8], ptr %i.qcw, i64 %i.qde ; 2 uses
  %i.qgy = load float, ptr %i.qgx, align 4, !tbaa !12 ; 3 uses
  %i.qgz = fmul reassoc nsz arcp contract afn float %i.qgy, %i.qgy
  %i.qha = getelementptr [4 x i8], ptr %i.qcw, i64 %indvars.iv.next.i.i606
  %i.qhb = getelementptr i8, ptr %i.qgx, i64 12
  %i.qhc = getelementptr [4 x i8], ptr %i.qcy, i64 %i.qde ; 2 uses
  %68 = load <2 x float>, ptr %i.qhb, align 4, !tbaa !12 ; 2 uses
  %i.qhd = load <4 x float>, ptr %i.qhc, align 4, !tbaa !12
  %69 = load <2 x float>, ptr %i.qha, align 4, !tbaa !12 ; 3 uses
  %70 = shufflevector <2 x float> %68, <2 x float> %69, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %71 = shufflevector <4 x float> %i.qhd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %72 = shufflevector <8 x float> %70, <8 x float> %71, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %73 = fmul reassoc nsz arcp contract afn <8 x float> %72, %72
  %74 = getelementptr i8, ptr %i.qhc, i64 16
  %i.qhe = load float, ptr %74, align 4, !tbaa !12 ; 3 uses
  %75 = insertelement <8 x float> poison, float %i.qhe, i64 4
  %76 = shufflevector <2 x float> %69, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %77 = shufflevector <8 x float> %75, <8 x float> %76, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 9, i32 poison, i32 poison>
  %78 = shufflevector <8 x float> %71, <8 x float> %77, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %79 = shufflevector <2 x float> %68, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %80 = shufflevector <8 x float> %78, <8 x float> %79, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %op.rdx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.qgy, <8 x float> %80)
  %i.qhf = extractelement <2 x float> %69, i64 0
  %op.rdx4564.a = fadd reassoc nsz arcp contract afn float %i.qhf, %i.qgk
  %op.rdx4565.a = fadd reassoc nsz arcp contract afn float %op.rdx, %op.rdx4564.a
  %i.qhg = fmul reassoc nsz arcp contract afn float %i.qhe, %i.qhe
  %op.rdx4566 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.qgz, <8 x float> %73)
  %op.rdx4567 = fadd reassoc nsz arcp contract afn float %i.qhg, %i.qgm
  %op.rdx4568 = fadd reassoc nsz arcp contract afn float %op.rdx4566, %op.rdx4567
  br label %iter.check1936

.loopexit4523:                                    ; preds = %vec.epilog.scalar.ph1937, %vec.epilog.middle.block1949, %middle.block1926
  %.lcssa1646 = phi float [ %i.qfs, %vec.epilog.middle.block1949 ], [ %i.qfd, %middle.block1926 ], [ %i.qiq, %vec.epilog.scalar.ph1937 ] ; 3 uses
  %.lcssa1645 = phi float [ %i.qfr, %vec.epilog.middle.block1949 ], [ %i.qfc, %middle.block1926 ], [ %i.qis, %vec.epilog.scalar.ph1937 ] ; 2 uses
  %i.qhh = add nuw nsw i64 %indvars.iv127.i.i, %i.qci ; 3 uses
  %i.qhi = fmul reassoc nsz arcp contract afn float %.lcssa1646, %.lcssa1646
  %i.qhj = fmul reassoc nsz arcp contract afn float %i.qhi, f0x3D430C31 ; 2 uses
  %i.qhk = fcmp reassoc nsz arcp contract afn olt float %.lcssa1645, %i.qhj
  %i.qhl = fsub reassoc nsz arcp contract afn float %.lcssa1645, %i.qhj
  %i.qhm = fmul reassoc nsz arcp contract afn float %i.qhl, f0x3D430C31
  %i.qhn = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.qhm)
  %i.qho = select i1 %i.qhk, float 0.000000e+00, float %i.qhn
  %i.qhp = fmul reassoc nsz arcp contract afn float %.lcssa1646, f0x3D430C31 ; 2 uses
  %i.qhq = fcmp reassoc nsz arcp contract afn olt float %i.qhp, f0x37800000
  %i.qhr = select reassoc nsz arcp contract afn i1 %i.qhq, float f0x37800000, float %i.qhp
  %i.qhs = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.qhr)
  %i.qht = fdiv reassoc nsz arcp contract afn float %i.qho, %i.qhs
  %i.qhu = fadd reassoc nsz arcp contract afn float %i.qht, 1.000000e+00
  %i.qhv = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qhu)
  %.neg.i.i = fmul reassoc nsz arcp contract afn float %i.qhv, -2.000000e+02
  %i.qhw = fadd reassoc nsz arcp contract afn float %i.qca, %.neg.i.i
  %i.qhx = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.qhw)
  %i.qhy = fadd reassoc nsz arcp contract afn float %i.qhx, 1.000000e+00
  %i.qhz = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %i.qhh ; 2 uses
  %i.qia = load float, ptr %i.qhz, align 4, !tbaa !12
  %i.qib = fdiv reassoc nsz arcp contract afn float 1.010110e+00, %i.qhy
  %i.qic = fadd reassoc nsz arcp contract afn float %i.qib, -1.010110e-02
  %i.qid = fmul reassoc nsz arcp contract afn float %i.qia, %i.qic ; 3 uses
  %i.qie = fcmp reassoc nsz arcp contract afn ult float %i.qid, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.qid, 1.000000e+00
  %spec.select.i192.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.qid, float 1.000000e+00
  %i.qif = select reassoc nsz arcp contract afn i1 %i.qie, float 0.000000e+00, float %spec.select.i192.i
  store float %i.qif, ptr %i.qhz, align 4, !tbaa !12
  %i.qig = getelementptr inbounds nuw [4 x i8], ptr %i.ptd, i64 %i.qhh
  %i.qih = load float, ptr %i.qig, align 4, !tbaa !12
  %i.qii = getelementptr inbounds nuw [4 x i8], ptr %i.ptb, i64 %i.qhh
  store float %i.qih, ptr %i.qii, align 4, !tbaa !12
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i, 1 ; 2 uses
  %exitcond130.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, %i.aod
  br i1 %exitcond130.not.i.i, label %._crit_edge.i193.i, label %bb.qw

vec.epilog.scalar.ph1937:                         ; preds = %vec.epilog.scalar.ph1937.preheader, %vec.epilog.scalar.ph1937
  %indvars.iv.i.i607 = phi i64 [ %indvars.iv.next125.i.i, %vec.epilog.scalar.ph1937 ], [ %indvars.iv.i.i607.ph, %vec.epilog.scalar.ph1937.preheader ] ; 4 uses
  %.2110.i.i = phi float [ %i.qis, %vec.epilog.scalar.ph1937 ], [ %.2110.i.i.ph, %vec.epilog.scalar.ph1937.preheader ]
  %.294109.i.i = phi float [ %i.qiq, %vec.epilog.scalar.ph1937 ], [ %.294109.i.i.ph, %vec.epilog.scalar.ph1937.preheader ]
  %i.qij = getelementptr [4 x i8], ptr %i.qco, i64 %indvars.iv.i.i607
  %i.qik = load float, ptr %i.qij, align 4, !tbaa !12 ; 3 uses
  %i.qil = fadd reassoc nsz arcp contract afn float %i.qik, %.294109.i.i
  %i.qim = fmul reassoc nsz arcp contract afn float %i.qik, %i.qik
  %i.qin = fadd reassoc nsz arcp contract afn float %.2110.i.i, %i.qim
  %i.qio = getelementptr [4 x i8], ptr %i.qcr, i64 %indvars.iv.i.i607
  %i.qip = load float, ptr %i.qio, align 4, !tbaa !12 ; 3 uses
  %i.qiq = fadd reassoc nsz arcp contract afn float %i.qil, %i.qip ; 2 uses
  %i.qir = fmul reassoc nsz arcp contract afn float %i.qip, %i.qip
  %i.qis = fadd reassoc nsz arcp contract afn float %i.qin, %i.qir ; 2 uses
  %indvars.iv.next125.i.i = add nsw i64 %indvars.iv.i.i607, 1
  %.not.i191.i = icmp sgt i64 %indvars.iv.i.i607, %i.qdm
  br i1 %.not.i191.i, label %.loopexit4523, label %vec.epilog.scalar.ph1937, !llvm.loop !407

_modify_blend.exit.i:                             ; preds = %._crit_edge.i193.i, %.lr.ph115.i.i, %_prepare_blend.exit.i, %bb.qo
  %i.qit = phi i1 [ false, %bb.qo ], [ false, %_prepare_blend.exit.i ], [ true, %.lr.ph115.i.i ], [ true, %._crit_edge.i193.i ] ; 2 uses
  tail call void @dt_gaussian_fast_blur(ptr noundef nonnull %i.ptc, ptr noundef nonnull %i.pte, i32 noundef %i.bo, i32 noundef %i.axe, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 1) #27
  %.not36.i = icmp eq i64 %i.psc, 0               ; 2 uses
  br i1 %.not36.i, label %._crit_edge.i589, label %.lr.ph.i586.preheader

.lr.ph.i586.preheader:                            ; preds = %_modify_blend.exit.i
  %min.iters.check1891 = icmp ult i64 %i.psc, 8
  br i1 %min.iters.check1891, label %.lr.ph.i586.preheader4612, label %vector.memcheck1884

vector.memcheck1884:                              ; preds = %.lr.ph.i586.preheader
  %i.qiu = mul i64 %i.atw, %i.psb                 ; 2 uses
  %scevgep1885 = getelementptr i8, ptr %i.pte, i64 %i.qiu
  %scevgep1886 = getelementptr i8, ptr %i.ptc, i64 %i.qiu
  %bound01887 = icmp ult ptr %i.pte, %scevgep1886
  %bound11888 = icmp ult ptr %i.ptc, %scevgep1885
  %found.conflict1889 = and i1 %bound01887, %bound11888
  br i1 %found.conflict1889, label %.lr.ph.i586.preheader4612, label %vector.ph1892

vector.ph1892:                                    ; preds = %vector.memcheck1884
  %n.vec1893 = and i64 %i.psc, -8                 ; 3 uses
  br label %vector.body1894

vector.body1894:                                  ; preds = %vector.body1894, %vector.ph1892
  %index1895 = phi i64 [ 0, %vector.ph1892 ], [ %index.next1898, %vector.body1894 ] ; 3 uses
  %i.qiv = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %index1895
  %wide.load1896 = load <8 x float>, ptr %i.qiv, align 32, !tbaa !12, !alias.scope !595
  %i.qiw = getelementptr inbounds nuw [4 x i8], ptr %i.pte, i64 %index1895 ; 2 uses
  %wide.load1897 = load <8 x float>, ptr %i.qiw, align 32, !tbaa !12, !alias.scope !596, !noalias !595 ; 2 uses
  %i.qix = fsub reassoc nsz arcp contract afn <8 x float> %wide.load1896, %wide.load1897 ; 2 uses
  %i.qiy = fmul reassoc nsz arcp contract afn <8 x float> %i.qix, splat (float 1.000000e+01)
  %i.qiz = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e+00), %i.qiy
  %i.qja = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.qiz)
  %i.qjb = fadd reassoc nsz arcp contract afn <8 x float> %i.qja, splat (float 1.000000e+00)
  %i.qjc = fdiv reassoc nsz arcp contract afn <8 x float> %i.qix, %i.qjb
  %i.qjd = fadd reassoc nsz arcp contract afn <8 x float> %i.qjc, %wide.load1897 ; 3 uses
  %i.qje = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.qjd, zeroinitializer
  %i.qjf = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.qjd, splat (float 1.000000e+00)
  %i.qjg = select reassoc nsz arcp contract afn <8 x i1> %i.qjf, <8 x float> %i.qjd, <8 x float> splat (float 1.000000e+00)
  %i.qjh = select reassoc nsz arcp contract afn <8 x i1> %i.qje, <8 x float> zeroinitializer, <8 x float> %i.qjg
  store <8 x float> %i.qjh, ptr %i.qiw, align 32, !tbaa !12, !alias.scope !596, !noalias !595
  %index.next1898 = add nuw i64 %index1895, 8     ; 2 uses
  %i.qji = icmp eq i64 %index.next1898, %n.vec1893
  br i1 %i.qji, label %middle.block1899, label %vector.body1894, !llvm.loop !411

middle.block1899:                                 ; preds = %vector.body1894
  %cmp.n1900 = icmp eq i64 %i.psc, %n.vec1893
  br i1 %cmp.n1900, label %._crit_edge.i589, label %.lr.ph.i586.preheader4612

.lr.ph.i586.preheader4612:                        ; preds = %vector.memcheck1884, %.lr.ph.i586.preheader, %middle.block1899
  %.016826.i.ph = phi i64 [ 0, %vector.memcheck1884 ], [ 0, %.lr.ph.i586.preheader ], [ %n.vec1893, %middle.block1899 ] ; 5 uses
  %.neg4788 = or disjoint i64 %.016826.i.ph, 1
  %xtraiter4767 = and i64 %i.psc, 1
  %lcmp.mod4768.not = icmp eq i64 %xtraiter4767, 0
  br i1 %lcmp.mod4768.not, label %.lr.ph.i586.prol.loopexit, label %.lr.ph.i586.prol

.lr.ph.i586.prol:                                 ; preds = %.lr.ph.i586.preheader4612
  %i.qjj = getelementptr inbounds nuw [4 x i8], ptr %i.ptc, i64 %.016826.i.ph
  %i.qjk = load float, ptr %i.qjj, align 32, !tbaa !12
  %i.qjl = getelementptr inbounds nuw [4 x i8], ptr %i.pte, i64 %.016826.i.ph ; 2 uses
  %i.qjm = load float, ptr %i.qjl, align 32, !tbaa !12 ; 2 uses
  %i.qjn = fsub reassoc nsz arcp contract afn float %i.qjk, %i.qjm ; 2 uses
  %i.qjo = fmul reassoc nsz arcp contract afn float %i.qjn, 1.000000e+01
  %i.qjp = fsub reassoc nsz arcp contract afn float 5.000000e+00, %i.qjo
  %i.qjq = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.qjp)
  %i.qjr = fadd reassoc nsz arcp contract afn float %i.qjq, 1.000000e+00
  %i.qjs = fdiv reassoc nsz arcp contract afn float %i.qjn, %i.qjr
  %i.qjt = fadd reassoc nsz arcp contract afn float %i.qjs, %i.qjm ; 3 uses
  %i.qju = fcmp reassoc nsz arcp contract afn ult float %i.qjt, 0.000000e+00
  %.inv17.i.prol = fcmp reassoc nsz arcp contract afn ole float %i.qjt, 1.000000e+00
  %spec.select.i587.prol = select reassoc nsz arcp contract afn i1 %.inv17.i.prol, float %i.qjt, float 1.000000e+00
  %i.qjv = select reassoc nsz arcp contract afn i1 %i.qju, float 0.000000e+00, float %spec.select.i587.prol
  store float %i.qjv, ptr %i.qjl, align 32, !tbaa !12
  %i.qjw = or disjoint i64 %.016826.i.ph, 1
  br label %.lr.ph.i586.prol.loopexit

.lr.ph.i586.prol.loopexit:                        ; preds = %.lr.ph.i586.prol, %.lr.ph.i586.preheader4612
  %.016826.i.unr = phi i64 [ %.016826.i.ph, %.lr.ph.i586.preheader4612 ], [ %i.qjw, %.lr.ph.i586.prol ]
  %i.qjx = icmp eq i64 %i.psc, %.neg4788
  br i1 %i.qjx, label %._crit_edge.i589, label %.lr.ph.i586

._crit_edge.i589:                                 ; preds = %.lr.ph.i586.prol.loopexit, %.lr.ph.i586, %middle.block1899, %_modify_blend.exit.i
  br i1 %i.cz, label %.preheader22.i, label %bb.ra

.preheader22.i:                                   ; preds = %._crit_edge.i589
  %i.qjy = shl i64 %i.psc, 2                      ; 4 uses
  %.not37.i590 = icmp eq i64 %i.qjy, 0
  br i1 %.not37.i590, label %.thread12.i, label %iter.check1799

iter.check1799:                                   ; preds = %.preheader22.i
  %i.qjz = add i64 %i.qjy, -4                     ; 3 uses
  %i.qka = lshr exact i64 %i.qjz, 2
  %i.qkb = add nuw nsw i64 %i.qka, 1              ; 5 uses
  %min.iters.check1770 = icmp ult i64 %i.qjz, 28
  br i1 %min.iters.check1770, label %.lr.ph28.i.preheader, label %vector.memcheck1761

vector.memcheck1761:                              ; preds = %iter.check1799
  %i.qkc = add i64 %i.qjy, -1                     ; 2 uses
  %i.qkd = shl i64 %i.qkc, 2
  %i.qke = and i64 %i.qkd, -16
  %scevgep1763 = getelementptr i8, ptr %scevgep1762, i64 %i.qke
  %scevgep1764 = getelementptr i8, ptr %i.pte, i64 4
  %i.qkf = and i64 %i.qkc, -4
  %scevgep1765 = getelementptr i8, ptr %scevgep1764, i64 %i.qkf
  %bound01766 = icmp ult ptr %scevgep1681, %scevgep1765
  %bound11767 = icmp ult ptr %i.pte, %scevgep1763
  %found.conflict1768 = and i1 %bound01766, %bound11767
  br i1 %found.conflict1768, label %.lr.ph28.i.preheader, label %vector.main.loop.iter.check1771

vector.main.loop.iter.check1771:                  ; preds = %vector.memcheck1761
  %min.iters.check1772 = icmp ult i64 %i.qjz, 124
  br i1 %min.iters.check1772, label %vec.epilog.ph1803, label %vector.ph1773

vector.ph1773:                                    ; preds = %vector.main.loop.iter.check1771
  %i.qkg = and i64 %i.qkb, 24
  %n.vec1774 = and i64 %i.qkb, 9223372036854775776 ; 4 uses
  %i.qkh = shl i64 %n.vec1774, 2                  ; 2 uses
  br label %vector.body1775

vector.body1775:                                  ; preds = %vector.ph1773, %vector.body1775
  %index1776 = phi i64 [ 0, %vector.ph1773 ], [ %index.next1793, %vector.body1775 ] ; 2 uses
  %vec.ind1777 = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph1773 ], [ %vec.ind.next1794, %vector.body1775 ] ; 5 uses
  %step.add1778 = add nuw <8 x i64> %vec.ind1777, splat (i64 32)
  %step.add.21779 = add nuw <8 x i64> %vec.ind1777, splat (i64 64)
  %step.add.31780 = add nuw <8 x i64> %vec.ind1777, splat (i64 96)
  %i.qki = shl nuw i64 %index1776, 2
  %i.qkj = getelementptr inbounds nuw i8, ptr %i.pte, i64 %i.qki ; 4 uses
  %i.qkk = getelementptr inbounds nuw i8, ptr %i.qkj, i64 32
  %i.qkl = getelementptr inbounds nuw i8, ptr %i.qkj, i64 64
  %i.qkm = getelementptr inbounds nuw i8, ptr %i.qkj, i64 96
  %wide.load1781 = load <8 x float>, ptr %i.qkj, align 64, !tbaa !12, !alias.scope !597
  %wide.load1782 = load <8 x float>, ptr %i.qkk, align 32, !tbaa !12, !alias.scope !597
  %wide.load1783 = load <8 x float>, ptr %i.qkl, align 64, !tbaa !12, !alias.scope !597
  %wide.load1784 = load <8 x float>, ptr %i.qkm, align 32, !tbaa !12, !alias.scope !597
  %wide.gep1785 = getelementptr inbounds nuw [4 x i8], ptr %i.anw, <8 x i64> %vec.ind1777
  %wide.gep1786 = getelementptr inbounds nuw [4 x i8], ptr %i.anw, <8 x i64> %step.add1778
  %wide.gep1787 = getelementptr inbounds nuw [4 x i8], ptr %i.anw, <8 x i64> %step.add.21779
  %wide.gep1788 = getelementptr inbounds nuw [4 x i8], ptr %i.anw, <8 x i64> %step.add.31780
end_hunk_6
