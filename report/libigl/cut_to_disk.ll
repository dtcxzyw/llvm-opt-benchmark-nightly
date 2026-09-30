Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cut_to_disk?download=true
inline.NumInlined: 1178
inline.NumDeleted: 514
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3igl11cut_to_diskIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EE:bb.a
  %i.bcd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i860, i64 32
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !29
  %i.bcf = icmp slt i32 %i.bce, %i.awe            ; 3 uses
  %.19.i.i.i.i862 = select i1 %i.bcf, ptr %.0811.i.i.i.i861, ptr %.012.i.i.i.i860 ; 5 uses
  %.1.in.v.i.i.i.i863 = select i1 %i.bcf, i64 24, i64 16
  %.1.in.i.i.i.i864 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i860, i64 %.1.in.v.i.i.i.i863
  %.1.i.i.i.i865 = load ptr, ptr %.1.in.i.i.i.i864, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i866 = icmp eq ptr %.1.i.i.i.i865, null
  br i1 %.not.i.i.i.i866, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867, label %bb.ka, !llvm.loop !1

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867: ; preds = %bb.ka
  %i.bcg = ashr exact i64 %i.bcc, 2               ; 3 uses
  %i.bch = icmp eq ptr %.19.i.i.i.i862, %i.aoc
  br i1 %i.bch, label %.critedge.i869, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867
  %.19.i.i.i.i862.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bcf, ptr %.0811.i.i.i.i861, ptr %.012.i.i.i.i860
  %.19.i.i.i.i862.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i862.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bci = load i32, ptr %.19.i.i.i.i862.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !29
  %i.bcj = icmp slt i32 %i.awe, %i.bci
  br i1 %i.bcj, label %.critedge.i869, label %bb.kg

.critedge.i869:                                   ; preds = %.thread1665, %bb.kb, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867
  %i.bck = phi i64 [ %i.bcg, %bb.kb ], [ %i.bcg, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867 ], [ %i.awj, %.thread1665 ] ; 2 uses
  %i.bcl = phi i64 [ %i.bcc, %bb.kb ], [ %i.bcc, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867 ], [ %i.awi, %.thread1665 ] ; 2 uses
  %i.bcm = phi i64 [ %i.bcb, %bb.kb ], [ %i.bcb, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867 ], [ %i.awh, %.thread1665 ] ; 2 uses
  %.08.lcssa.i.i.i14.i870 = phi ptr [ %.19.i.i.i.i862, %bb.kb ], [ %.19.i.i.i.i862, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i867 ], [ %i.aoc, %.thread1665 ]
  %i.bcn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc876 unwind label %.loopexit1743 ; 6 uses

.noexc876:                                        ; preds = %.critedge.i869
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 32 ; 3 uses
  store i32 %i.awe, ptr %i.bco, align 4, !tbaa !66
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 36
  store i32 0, ptr %i.bcp, align 4, !tbaa !67
  %i.bcq = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr %.08.lcssa.i.i.i14.i870, ptr noundef nonnull align 4 dereferenceable(4) %i.bco)
          to label %bb.kc unwind label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i.i871 ; 2 uses

bb.kc:                                            ; preds = %.noexc876
  %i.bcr = extractvalue { ptr, ptr } %i.bcq, 0    ; 2 uses
  %i.bcs = extractvalue { ptr, ptr } %i.bcq, 1    ; 4 uses
  %.not.i.i872 = icmp eq ptr %i.bcs, null
  br i1 %.not.i.i872, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %.not.i.i.i4.i873 = icmp ne ptr %i.bcr, null
  %i.bct = icmp eq ptr %i.bcs, %i.aoc
  %or.cond.i.i.i.i874 = or i1 %.not.i.i.i4.i873, %i.bct
  br i1 %or.cond.i.i.i.i874, label %.thread.i.i875, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcs, i64 32
  %i.bcv = load i32, ptr %i.bco, align 4, !tbaa !29
  %i.bcw = load i32, ptr %i.bcu, align 4, !tbaa !29
  %i.bcx = icmp slt i32 %i.bcv, %i.bcw
  br label %.thread.i.i875

.thread.i.i875:                                   ; preds = %bb.ke, %bb.kd
  %i.bcy = phi i1 [ %i.bcx, %bb.ke ], [ true, %bb.kd ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bcy, ptr noundef nonnull %i.bcn, ptr noundef nonnull %i.bcs, ptr noundef nonnull align 8 dereferenceable(32) %i.aoc) #18
  %i.bcz = load i64, ptr %i.aof, align 8, !tbaa !28
  %i.bda = add i64 %i.bcz, 1
  store i64 %i.bda, ptr %i.aof, align 8, !tbaa !28
  br label %bb.kg

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i.i871: ; preds = %.noexc876
  %i.bdb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bcn, i64 noundef 40) #17
  br label %.body716

bb.kf:                                            ; preds = %bb.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.bcn, i64 noundef 40) #17
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %.thread.i.i875, %bb.kb
  %i.bdc = phi i64 [ %i.bcg, %bb.kb ], [ %i.bck, %.thread.i.i875 ], [ %i.bck, %bb.kf ] ; 4 uses
  %i.bdd = phi i64 [ %i.bcc, %bb.kb ], [ %i.bcl, %.thread.i.i875 ], [ %i.bcl, %bb.kf ] ; 4 uses
  %i.bde = phi i64 [ %i.bcb, %bb.kb ], [ %i.bcm, %.thread.i.i875 ], [ %i.bcm, %bb.kf ]
  %.sroa.09.0.i868 = phi ptr [ %.19.i.i.i.i862, %bb.kb ], [ %i.bcn, %.thread.i.i875 ], [ %i.bcr, %bb.kf ]
  %i.bdf = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i868, i64 36
  %i.bdg = trunc i64 %i.bdc to i32
  store i32 %i.bdg, ptr %i.bdf, align 4, !tbaa !29
  %.not.i880 = icmp eq ptr %.sroa.27.02591, %.sroa.47.02595
  br i1 %.not.i880, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  store i32 %i.awe, ptr %.sroa.27.02591, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit889

bb.ki:                                            ; preds = %bb.kg
  %i.bdh = icmp eq i64 %i.bdd, 9223372036854775804
  br i1 %i.bdh, label %bb.kj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i881

bb.kj:                                            ; preds = %bb.ki
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc887 unwind label %.loopexit.split-lp1744

.noexc887:                                        ; preds = %bb.kj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i881: ; preds = %bb.ki
  %.sroa.speculated.i.i.i882 = call i64 @llvm.umax.i64(i64 %i.bdc, i64 1)
  %i.bdi = add nsw i64 %.sroa.speculated.i.i.i882, %i.bdc ; 2 uses
  %i.bdj = icmp ult i64 %i.bdi, %i.bdc
  %i.bdk = call i64 @llvm.umin.i64(i64 %i.bdi, i64 2305843009213693951)
  %i.bdl = select i1 %i.bdj, i64 2305843009213693951, i64 %i.bdk ; 3 uses
  %.not.i.i.i883 = icmp ne i64 %i.bdl, 0
  call void @llvm.assume(i1 %.not.i.i.i883)
  %i.bdm = shl nuw nsw i64 %i.bdl, 2
  %i.bdn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bdm) #21
          to label %.noexc888 unwind label %.loopexit1743 ; 4 uses

.noexc888:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i881
  %i.bdo = getelementptr inbounds i8, ptr %i.bdn, i64 %i.bdd ; 2 uses
  store i32 %i.awe, ptr %i.bdo, align 4, !tbaa !29
  %i.bdp = icmp sgt i64 %i.bdd, 0
  br i1 %i.bdp, label %bb.kk, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886

bb.kk:                                            ; preds = %.noexc888
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bdn, ptr align 4 %.sroa.01338.02589, i64 %i.bdd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886: ; preds = %bb.kk, %.noexc888
  %i.bdq = ptrtoint ptr %.sroa.47.02595 to i64
  %i.bdr = sub i64 %i.bdq, %i.bde
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01338.02589, i64 noundef %i.bdr) #17
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.bdn, i64 %i.bdl
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit889

_ZNSt6vectorIiSaIiEE9push_backERKi.exit889:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886, %bb.kh
  %.sroa.01338.20 = phi ptr [ %i.bdn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886 ], [ %.sroa.01338.02589, %bb.kh ] ; 3 uses
  %.pn1707 = phi ptr [ %i.bdo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886 ], [ %.sroa.27.02591, %bb.kh ]
  %.sroa.47.20 = phi ptr [ %i.bds, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i886 ], [ %.sroa.47.02595, %bb.kh ] ; 3 uses
  %.sroa.27.8 = getelementptr inbounds nuw i8, ptr %.pn1707, i64 4
  %.not.i890 = icmp eq ptr %.sroa.19.02599, %.sroa.33.02603
  br i1 %.not.i890, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit889
  store i32 %.us-phi, ptr %.sroa.19.02599, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit899

bb.km:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit889
  %i.bdt = ptrtoint ptr %.sroa.33.02603 to i64
  %i.bdu = ptrtoint ptr %.sroa.01312.02597 to i64
  %i.bdv = sub i64 %i.bdt, %i.bdu                 ; 6 uses
  %i.bdw = icmp eq i64 %i.bdv, 9223372036854775804
  br i1 %i.bdw, label %bb.kn, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i891

bb.kn:                                            ; preds = %bb.km
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc897 unwind label %.loopexit.split-lp1744

.noexc897:                                        ; preds = %bb.kn
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i891: ; preds = %bb.km
  %i.bdx = ashr exact i64 %i.bdv, 2               ; 3 uses
  %.sroa.speculated.i.i.i892 = call i64 @llvm.umax.i64(i64 %i.bdx, i64 1)
  %i.bdy = add nsw i64 %.sroa.speculated.i.i.i892, %i.bdx ; 2 uses
  %i.bdz = icmp ult i64 %i.bdy, %i.bdx
  %i.bea = call i64 @llvm.umin.i64(i64 %i.bdy, i64 2305843009213693951)
  %i.beb = select i1 %i.bdz, i64 2305843009213693951, i64 %i.bea ; 3 uses
  %.not.i.i.i893 = icmp ne i64 %i.beb, 0
  call void @llvm.assume(i1 %.not.i.i.i893)
  %i.bec = shl nuw nsw i64 %i.beb, 2
  %i.bed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bec) #21
          to label %.noexc898 unwind label %.loopexit1743 ; 4 uses

.noexc898:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i891
  %i.bee = getelementptr inbounds i8, ptr %i.bed, i64 %i.bdv ; 2 uses
  store i32 %.us-phi, ptr %i.bee, align 4, !tbaa !29
  %i.bef = icmp sgt i64 %i.bdv, 0
  br i1 %i.bef, label %bb.ko, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896

bb.ko:                                            ; preds = %.noexc898
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bed, ptr align 4 %.sroa.01312.02597, i64 %i.bdv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896: ; preds = %bb.ko, %.noexc898
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01312.02597, i64 noundef %i.bdv) #17
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bed, i64 %i.beb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit899

_ZNSt6vectorIiSaIiEE9push_backERKi.exit899:       ; preds = %bb.kl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896
  %.sroa.01312.2 = phi ptr [ %i.bed, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896 ], [ %.sroa.01312.02597, %bb.kl ]
  %.pn4307 = phi ptr [ %i.bee, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896 ], [ %.sroa.19.02599, %bb.kl ]
  %.sroa.33.2 = phi ptr [ %i.beg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i896 ], [ %.sroa.33.02603, %bb.kl ]
  %.sroa.19.2 = getelementptr inbounds nuw i8, ptr %.pn4307, i64 4
  br label %.lr.ph2609, !llvm.loop !93

._crit_edge2610:                                  ; preds = %bb.jx, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.nw

._crit_edge2610.thread:                           ; preds = %.split.us, %bb.ir, %bb.iv, %bb.is, %bb.ij
  %.sroa.33.0.lcssa3601 = phi ptr [ %i.asl, %bb.ij ], [ %.sroa.33.02603, %bb.is ], [ %.sroa.33.02603, %bb.iv ], [ %.sroa.33.02603, %bb.ir ], [ %.sroa.33.02603, %.split.us ] ; 4 uses
  %.sroa.19.0.lcssa3600 = phi ptr [ %i.asl, %bb.ij ], [ %.sroa.19.02599, %bb.is ], [ %.sroa.19.02599, %bb.iv ], [ %.sroa.19.02599, %bb.ir ], [ %.sroa.19.02599, %.split.us ] ; 4 uses
  %.sroa.01312.0.lcssa3599 = phi ptr [ %i.ask, %bb.ij ], [ %.sroa.01312.02597, %bb.is ], [ %.sroa.01312.02597, %bb.iv ], [ %.sroa.01312.02597, %bb.ir ], [ %.sroa.01312.02597, %.split.us ] ; 7 uses
  %.sroa.47.0.lcssa3598 = phi ptr [ %i.asj, %bb.ij ], [ %.sroa.47.02595, %bb.is ], [ %.sroa.47.02595, %bb.iv ], [ %.sroa.47.02595, %bb.ir ], [ %.sroa.47.02595, %.split.us ] ; 4 uses
  %.sroa.27.0.lcssa3597 = phi ptr [ %i.asj, %bb.ij ], [ %.sroa.27.02591, %bb.is ], [ %.sroa.27.02591, %bb.iv ], [ %.sroa.27.02591, %bb.ir ], [ %.sroa.27.02591, %.split.us ] ; 5 uses
  %.sroa.01338.0.lcssa3596 = phi ptr [ %i.asf, %bb.ij ], [ %.sroa.01338.02589, %bb.is ], [ %.sroa.01338.02589, %bb.iv ], [ %.sroa.01338.02589, %bb.ir ], [ %.sroa.01338.02589, %.split.us ] ; 9 uses
  %i.beh = icmp ne ptr %.sroa.01338.0.lcssa3596, %.sroa.27.0.lcssa3597 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.27.0.lcssa3597, i64 -4 ; 3 uses
  %i.bei = icmp ult ptr %.sroa.01338.0.lcssa3596, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.beh, i1 %i.bei, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge2610.thread, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i900, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge2610.thread ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bel, %.lr.ph.i.i ], [ %.sroa.01338.0.lcssa3596, %._crit_edge2610.thread ] ; 3 uses
  %i.bej = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !29
  %i.bek = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !29
  store i32 %i.bek, ptr %.sroa.05.09.i.i, align 4, !tbaa !29
  store i32 %i.bej, ptr %.sroa.0.010.i.i, align 4, !tbaa !29
  %i.bel = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i900 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.bem = icmp ult ptr %i.bel, %.sroa.0.0.i.i900
  br i1 %i.bem, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !94

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %._crit_edge2610.thread
  %i.ben = icmp ne ptr %.sroa.01312.0.lcssa3599, %.sroa.19.0.lcssa3600
  %.sroa.0.08.i.i901 = getelementptr inbounds i8, ptr %.sroa.19.0.lcssa3600, i64 -4 ; 3 uses
  %i.beo = icmp ult ptr %.sroa.01312.0.lcssa3599, %.sroa.0.08.i.i901
  %or.cond.i.i902 = select i1 %i.ben, i1 %i.beo, i1 false
  br i1 %or.cond.i.i902, label %.lr.ph.i.i903, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit907

.lr.ph.i.i903:                                    ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %.lr.ph.i.i903
  %.sroa.0.010.i.i904 = phi ptr [ %.sroa.0.0.i.i906, %.lr.ph.i.i903 ], [ %.sroa.0.08.i.i901, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.05.09.i.i905 = phi ptr [ %i.ber, %.lr.ph.i.i903 ], [ %.sroa.01312.0.lcssa3599, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 3 uses
  %i.bep = load i32, ptr %.sroa.05.09.i.i905, align 4, !tbaa !29
  %i.beq = load i32, ptr %.sroa.0.010.i.i904, align 4, !tbaa !29
  store i32 %i.beq, ptr %.sroa.05.09.i.i905, align 4, !tbaa !29
  store i32 %i.bep, ptr %.sroa.0.010.i.i904, align 4, !tbaa !29
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i905, i64 4 ; 2 uses
  %.sroa.0.0.i.i906 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i904, i64 -4 ; 2 uses
  %i.bes = icmp ult ptr %i.ber, %.sroa.0.0.i.i906
  br i1 %i.bes, label %.lr.ph.i.i903, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit907, !llvm.loop !94

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit907: ; preds = %.lr.ph.i.i903, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.bet = load ptr, ptr %i.aod, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef %i.bet)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.kp

bb.kp:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit907
  %i.beu = landingpad { ptr, i32 }
          catch ptr null
  %i.bev = extractvalue { ptr, i32 } %i.beu, 0
  call void @__clang_call_terminate(ptr %i.bev) #23
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit907
  store ptr null, ptr %i.aod, align 8, !tbaa !26
  store <2 x ptr> %i.aoq, ptr %i.aoe, align 8, !tbaa !33
  store i64 0, ptr %i.aof, align 8, !tbaa !28
  br i1 %i.beh, label %.lr.ph2620.preheader, label %._crit_edge2621

.lr.ph2620.preheader:                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.bew = ptrtoint ptr %.sroa.27.0.lcssa3597 to i64
  %i.bex = ptrtoint ptr %.sroa.01338.0.lcssa3596 to i64
  %i.bey = sub i64 %i.bew, %i.bex
  %i.bez = ashr exact i64 %i.bey, 2
  br label %.lr.ph2620

._crit_edge2621:                                  ; preds = %bb.kw, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit
  %i.bfa = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !29 ; 2 uses
  %i.bfb = icmp eq i32 %i.bfa, -1
  br i1 %i.bfb, label %._crit_edge2658.thread, label %.lr.ph2657.preheader

.lr.ph2657.preheader:                             ; preds = %._crit_edge2621
  %i.bfc = load i32, ptr %.sroa.0.08.i.i901, align 4, !tbaa !29
  br label %.lr.ph2657

.lr.ph2620:                                       ; preds = %.lr.ph2620.preheader, %bb.kw
  %indvars.iv3237 = phi i64 [ 0, %.lr.ph2620.preheader ], [ %indvars.iv.next3238, %bb.kw ] ; 3 uses
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01338.0.lcssa3596, i64 %indvars.iv3237 ; 2 uses
  %i.bfe = load ptr, ptr %i.aod, align 8, !tbaa !26 ; 2 uses
  %.not10.i.i.i.i908 = icmp eq ptr %i.bfe, null
  br i1 %.not10.i.i.i.i908, label %.critedge.i919, label %.lr.ph.i.i.i.i909

.lr.ph.i.i.i.i909:                                ; preds = %.lr.ph2620
  %i.bff = load i32, ptr %i.bfd, align 4, !tbaa !29 ; 2 uses
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kq, %.lr.ph.i.i.i.i909
  %.012.i.i.i.i910 = phi ptr [ %i.bfe, %.lr.ph.i.i.i.i909 ], [ %.1.i.i.i.i915, %bb.kq ] ; 4 uses
  %.0811.i.i.i.i911 = phi ptr [ %i.aoc, %.lr.ph.i.i.i.i909 ], [ %.19.i.i.i.i912, %bb.kq ] ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i910, i64 32
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !29
  %i.bfi = icmp slt i32 %i.bfh, %i.bff            ; 3 uses
  %.19.i.i.i.i912 = select i1 %i.bfi, ptr %.0811.i.i.i.i911, ptr %.012.i.i.i.i910 ; 5 uses
  %.1.in.v.i.i.i.i913 = select i1 %i.bfi, i64 24, i64 16
  %.1.in.i.i.i.i914 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i910, i64 %.1.in.v.i.i.i.i913
  %.1.i.i.i.i915 = load ptr, ptr %.1.in.i.i.i.i914, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i916 = icmp eq ptr %.1.i.i.i.i915, null
  br i1 %.not.i.i.i.i916, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i917, label %bb.kq, !llvm.loop !1

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i917: ; preds = %bb.kq
  %i.bfj = icmp eq ptr %.19.i.i.i.i912, %i.aoc
  br i1 %i.bfj, label %.critedge.i919, label %bb.kr

bb.kr:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i917
  %.19.i.i.i.i912.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bfi, ptr %.0811.i.i.i.i911, ptr %.012.i.i.i.i910
  %.19.i.i.i.i912.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i912.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bfk = load i32, ptr %.19.i.i.i.i912.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !29
  %i.bfl = icmp slt i32 %i.bff, %i.bfk
  br i1 %i.bfl, label %.critedge.i919, label %bb.kw

.critedge.i919:                                   ; preds = %bb.kr, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i917, %.lr.ph2620
  %.08.lcssa.i.i.i14.i920 = phi ptr [ %.19.i.i.i.i912, %bb.kr ], [ %.19.i.i.i.i912, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i917 ], [ %i.aoc, %.lr.ph2620 ]
  %i.bfm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc926 unwind label %bb.kx ; 6 uses

.noexc926:                                        ; preds = %.critedge.i919
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 32 ; 3 uses
  %i.bfo = load i32, ptr %i.bfd, align 4, !tbaa !29
  store i32 %i.bfo, ptr %i.bfn, align 4, !tbaa !66
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfm, i64 36
  store i32 0, ptr %i.bfp, align 4, !tbaa !67
  %i.bfq = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr %.08.lcssa.i.i.i14.i920, ptr noundef nonnull align 4 dereferenceable(4) %i.bfn)
          to label %bb.ks unwind label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i.i921 ; 2 uses

bb.ks:                                            ; preds = %.noexc926
  %i.bfr = extractvalue { ptr, ptr } %i.bfq, 0    ; 2 uses
  %i.bfs = extractvalue { ptr, ptr } %i.bfq, 1    ; 4 uses
  %.not.i.i922 = icmp eq ptr %i.bfs, null
  br i1 %.not.i.i922, label %bb.kv, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %.not.i.i.i4.i923 = icmp ne ptr %i.bfr, null
  %i.bft = icmp eq ptr %i.bfs, %i.aoc
  %or.cond.i.i.i.i924 = or i1 %.not.i.i.i4.i923, %i.bft
  br i1 %or.cond.i.i.i.i924, label %.thread.i.i925, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfs, i64 32
  %i.bfv = load i32, ptr %i.bfn, align 4, !tbaa !29
  %i.bfw = load i32, ptr %i.bfu, align 4, !tbaa !29
  %i.bfx = icmp slt i32 %i.bfv, %i.bfw
  br label %.thread.i.i925

.thread.i.i925:                                   ; preds = %bb.ku, %bb.kt
  %i.bfy = phi i1 [ %i.bfx, %bb.ku ], [ true, %bb.kt ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bfy, ptr noundef nonnull %i.bfm, ptr noundef nonnull %i.bfs, ptr noundef nonnull align 8 dereferenceable(32) %i.aoc) #18
  %i.bfz = load i64, ptr %i.aof, align 8, !tbaa !28
  %i.bga = add i64 %i.bfz, 1
  store i64 %i.bga, ptr %i.aof, align 8, !tbaa !28
  br label %bb.kw

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i.i921: ; preds = %.noexc926
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bfm, i64 noundef 40) #17
  br label %.body716

bb.kv:                                            ; preds = %bb.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.bfm, i64 noundef 40) #17
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %.thread.i.i925, %bb.kr
  %.sroa.09.0.i918 = phi ptr [ %.19.i.i.i.i912, %bb.kr ], [ %i.bfm, %.thread.i.i925 ], [ %i.bfr, %bb.kv ]
  %i.bgc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i918, i64 36
  %i.bgd = trunc nuw nsw i64 %indvars.iv3237 to i32
  store i32 %i.bgd, ptr %i.bgc, align 4, !tbaa !29
  %indvars.iv.next3238 = add nuw i64 %indvars.iv3237, 1 ; 2 uses
  %exitcond3240.not = icmp eq i64 %indvars.iv.next3238, %i.bez
  br i1 %exitcond3240.not, label %._crit_edge2621, label %.lr.ph2620, !llvm.loop !95

bb.kx:                                            ; preds = %.critedge.i919
  %i.bge = landingpad { ptr, i32 }
          cleanup
  br label %.body716

.lr.ph2657:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094, %.lr.ph2657.preheader
  %.1 = phi i32 [ %i.bfa, %.lr.ph2657.preheader ], [ %i.bid, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 4 uses
  %.12062653 = phi i32 [ %i.bfc, %.lr.ph2657.preheader ], [ %.us-phi2628, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 3 uses
  %.sroa.33.32651 = phi ptr [ %.sroa.33.0.lcssa3601, %.lr.ph2657.preheader ], [ %.sroa.33.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 14 uses
  %.sroa.19.32647 = phi ptr [ %.sroa.19.0.lcssa3600, %.lr.ph2657.preheader ], [ %.sroa.19.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 8 uses
  %.sroa.01312.32645 = phi ptr [ %.sroa.01312.0.lcssa3599, %.lr.ph2657.preheader ], [ %.sroa.01312.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 17 uses
  %.sroa.47.72643 = phi ptr [ %.sroa.47.0.lcssa3598, %.lr.ph2657.preheader ], [ %.sroa.47.22, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 15 uses
  %.sroa.27.32639 = phi ptr [ %.sroa.27.0.lcssa3597, %.lr.ph2657.preheader ], [ %.sroa.27.9, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 10 uses
  %.sroa.01338.72637 = phi ptr [ %.sroa.01338.0.lcssa3596, %.lr.ph2657.preheader ], [ %.sroa.01338.22, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1094 ] ; 19 uses
  %i.bgf = load ptr, ptr %i.ano, align 8, !tbaa !26 ; 2 uses
  %.not10.i.i.i.i930 = icmp eq ptr %i.bgf, null
  br i1 %.not10.i.i.i.i930, label %.critedge.i941, label %.lr.ph.i.i.i.i931

.lr.ph.i.i.i.i931:                                ; preds = %.lr.ph2657, %.lr.ph.i.i.i.i931
  %.012.i.i.i.i932 = phi ptr [ %.1.i.i.i.i937, %.lr.ph.i.i.i.i931 ], [ %i.bgf, %.lr.ph2657 ] ; 4 uses
  %.0811.i.i.i.i933 = phi ptr [ %.19.i.i.i.i934, %.lr.ph.i.i.i.i931 ], [ %i.ann, %.lr.ph2657 ] ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i932, i64 32
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !29
  %i.bgi = icmp slt i32 %i.bgh, %.1               ; 3 uses
  %.19.i.i.i.i934 = select i1 %i.bgi, ptr %.0811.i.i.i.i933, ptr %.012.i.i.i.i932 ; 5 uses
  %.1.in.v.i.i.i.i935 = select i1 %i.bgi, i64 24, i64 16
  %.1.in.i.i.i.i936 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i932, i64 %.1.in.v.i.i.i.i935
  %.1.i.i.i.i937 = load ptr, ptr %.1.in.i.i.i.i936, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i938 = icmp eq ptr %.1.i.i.i.i937, null
  br i1 %.not.i.i.i.i938, label %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i939, label %.lr.ph.i.i.i.i931, !llvm.loop !88

_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i939: ; preds = %.lr.ph.i.i.i.i931
  %i.bgj = icmp eq ptr %.19.i.i.i.i934, %i.ann
  br i1 %i.bgj, label %.critedge.i941, label %bb.ky

bb.ky:                                            ; preds = %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i939
  %.19.i.i.i.i934.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bgi, ptr %.0811.i.i.i.i933, ptr %.012.i.i.i.i932
  %.19.i.i.i.i934.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i934.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bgk = load i32, ptr %.19.i.i.i.i934.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !29
  %i.bgl = icmp slt i32 %.1, %i.bgk
  br i1 %i.bgl, label %.critedge.i941, label %bb.lf

.critedge.i941:                                   ; preds = %bb.ky, %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i939, %.lr.ph2657
  %.08.lcssa.i.i.i11.i942 = phi ptr [ %.19.i.i.i.i934, %bb.ky ], [ %.19.i.i.i.i934, %_ZNSt3mapIiSt6vectorIiSaIiEESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i939 ], [ %i.ann, %.lr.ph2657 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %27, ptr %2, align 8, !tbaa !69
  %i.bgm = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %.noexc1241 unwind label %bb.lh ; 7 uses

.noexc1241:                                       ; preds = %.critedge.i941
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 32 ; 3 uses
  store i32 %.1, ptr %i.bgn, align 8, !tbaa !64
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgo, i8 0, i64 24, i1 false)
  store ptr %i.bgm, ptr %i.aok, align 8, !tbaa !72
  %i.bgp = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorIiSaIiEEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr %.08.lcssa.i.i.i11.i942, ptr noundef nonnull align 4 dereferenceable(4) %i.bgn)
          to label %bb.kz unwind label %bb.lc     ; 2 uses

bb.kz:                                            ; preds = %.noexc1241
  %i.bgq = extractvalue { ptr, ptr } %i.bgp, 0    ; 2 uses
  %i.bgr = extractvalue { ptr, ptr } %i.bgp, 1    ; 4 uses
  %.not.i1234 = icmp eq ptr %i.bgr, null
  br i1 %.not.i1234, label %bb.ld, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %.not.i.i.i1235 = icmp ne ptr %i.bgq, null
  %i.bgs = icmp eq ptr %i.bgr, %i.ann
  %or.cond.i.i.i1236 = or i1 %.not.i.i.i1235, %i.bgs
  br i1 %or.cond.i.i.i1236, label %.thread.i1237, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgr, i64 32
  %i.bgu = load i32, ptr %i.bgn, align 8, !tbaa !29
  %i.bgv = load i32, ptr %i.bgt, align 4, !tbaa !29
  %i.bgw = icmp slt i32 %i.bgu, %i.bgv
  br label %.thread.i1237

.thread.i1237:                                    ; preds = %bb.lb, %bb.la
  %i.bgx = phi i1 [ %i.bgw, %bb.lb ], [ true, %bb.la ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bgx, ptr noundef nonnull %i.bgm, ptr noundef nonnull %i.bgr, ptr noundef nonnull align 8 dereferenceable(32) %i.ann) #18
  %i.bgy = load i64, ptr %i.anr, align 8, !tbaa !28
  %i.bgz = add i64 %i.bgy, 1
  store i64 %i.bgz, ptr %i.anr, align 8, !tbaa !28
  br label %.noexc943

bb.lc:                                            ; preds = %.noexc1241
  %i.bha = landingpad { ptr, i32 }
          cleanup
end_hunk_0
