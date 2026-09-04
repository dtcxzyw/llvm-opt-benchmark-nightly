Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readir?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_Z8do_indexPKcRKSt8optionalINSt10filesystem7__cxx114pathEEP10gmx_mtop_tbRKN3gmx18MDModulesNotifiersEP10t_inputrecP14WarningHandler:bb.a
bb.ij:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i905
  %i.ado = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !33
  %i.adq = ptrtoint ptr %i.adp to i64
  %i.adr = ptrtoint ptr %i.adn to i64
  %i.ads = sub i64 %i.adq, %i.adr
  call void @_ZdlPvm(ptr noundef nonnull %i.adn, i64 noundef %i.ads) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit908

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit908: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i905, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  br label %.critedge1832

.lr.ph1812:                                       ; preds = %.lr.ph1812.preheader, %bb.iq
  %indvars.iv1939 = phi i64 [ 0, %.lr.ph1812.preheader ], [ %indvars.iv.next1940, %bb.iq ] ; 12 uses
  %i.adt = load ptr, ptr %i.qp, align 8, !tbaa !746
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %indvars.iv1939
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !750 ; 2 uses
  %.not567 = icmp eq i32 %i.adv, 0
  br i1 %.not567, label %bb.iq, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph1812
  %i.adw = load ptr, ptr %i.ar, align 8, !tbaa !328
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %indvars.iv1939
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !169
  %i.adz = load ptr, ptr @stderr, align 8, !tbaa !343
  %i.aea = sext i32 %i.ady to i64
  %i.aeb = load ptr, ptr %i.az, align 8, !tbaa !411
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %i.aea
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !410
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !34
  %i.aef = invoke noundef ptr @_Z17enumValueToString18SimulatedAnnealing(i32 noundef %i.adv)
          to label %bb.il unwind label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.aeg = load ptr, ptr %i.qr, align 8, !tbaa !747
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %indvars.iv1939
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !169
  %i.aej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adz, ptr noundef nonnull @.str.646, ptr noundef %i.aee, ptr noundef %i.aef, i32 noundef %i.aei) #34 ; 0 uses
  %i.aek = load ptr, ptr @stderr, align 8, !tbaa !343
  %i.ael = call i64 @fwrite(ptr nonnull @.str.647, i64 28, i64 1, ptr %i.aek) #35 ; 0 uses
  %i.aem = load ptr, ptr %i.qr, align 8, !tbaa !747
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv1939
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !169 ; 2 uses
  %i.aep = add nsw i32 %i.aeo, -1
  %i.aeq = icmp sgt i32 %i.aeo, 1
  br i1 %i.aeq, label %.lr.ph1808, label %._crit_edge1809

.lr.ph1808:                                       ; preds = %bb.il, %.lr.ph1808
  %indvars.iv1936 = phi i64 [ %indvars.iv.next1937, %.lr.ph1808 ], [ 0, %bb.il ] ; 3 uses
  %i.aer = load ptr, ptr @stderr, align 8, !tbaa !343
  %i.aes = load ptr, ptr %i.qt, align 8, !tbaa !748
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %indvars.iv1939
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !333
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv1936
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !149
  %i.aex = fpext float %i.aew to double
  %i.aey = load ptr, ptr %i.qv, align 8, !tbaa !751
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %indvars.iv1939
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !333
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv1936
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !149
  %i.afd = fpext float %i.afc to double
  %i.afe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aer, ptr noundef nonnull @.str.648, double noundef %i.aex, double noundef %i.afd) #34 ; 0 uses
  %indvars.iv.next1937 = add nuw nsw i64 %indvars.iv1936, 1 ; 2 uses
  %i.aff = load ptr, ptr %i.qr, align 8, !tbaa !747
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv1939
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !169
  %i.afi = add nsw i32 %i.afh, -1                 ; 2 uses
  %i.afj = sext i32 %i.afi to i64
  %i.afk = icmp slt i64 %indvars.iv.next1937, %i.afj
  br i1 %i.afk, label %.lr.ph1808, label %._crit_edge1809, !llvm.loop !694

bb.im:                                            ; preds = %bb.ip, %bb.ik
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

._crit_edge1809:                                  ; preds = %.lr.ph1808, %bb.il
  %.lcssa1747 = phi i32 [ %i.aep, %bb.il ], [ %i.afi, %.lr.ph1808 ]
  %i.afm = load ptr, ptr %i.qp, align 8, !tbaa !746
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %indvars.iv1939
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !750
  %i.afp = icmp eq i32 %i.afo, 1
  %i.afq = load ptr, ptr @stderr, align 8, !tbaa !343 ; 2 uses
  %i.afr = load ptr, ptr %i.qt, align 8, !tbaa !748
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afr, i64 %indvars.iv1939
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !333
  %i.afu = sext i32 %.lcssa1747 to i64            ; 3 uses
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.afu
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !149
  %i.afx = fpext float %i.afw to double           ; 2 uses
  %i.afy = load ptr, ptr %i.qv, align 8, !tbaa !751
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afy, i64 %indvars.iv1939
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !333
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.aga, i64 %i.afu
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !149
  %i.agd = fpext float %i.agc to double           ; 2 uses
  br i1 %i.afp, label %bb.in, label %bb.io

bb.in:                                            ; preds = %._crit_edge1809
  %i.age = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afq, ptr noundef nonnull @.str.649, double noundef %i.afx, double noundef %i.agd) #34 ; 0 uses
  br label %bb.iq

bb.io:                                            ; preds = %._crit_edge1809
  %i.agf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afq, ptr noundef nonnull @.str.648, double noundef %i.afx, double noundef %i.agd) #34 ; 0 uses
  %i.agg = load ptr, ptr %i.qv, align 8, !tbaa !751
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv1939
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !333 ; 2 uses
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.agi, i64 %i.afu
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !149
  %i.agl = load float, ptr %i.agi, align 4, !tbaa !149
  %i.agm = fsub float %i.agk, %i.agl
  %i.agn = call noundef float @llvm.fabs.f32(float %i.agm)
  %i.ago = fcmp ogt float %i.agn, f0x34000000
  br i1 %i.ago, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 60, ptr nonnull @.str.650)
          to label %bb.iq unwind label %bb.im

bb.iq:                                            ; preds = %bb.in, %bb.ip, %bb.io, %.lr.ph1812
  %indvars.iv.next1940 = add nuw nsw i64 %indvars.iv1939, 1 ; 2 uses
  %exitcond1944.not = icmp eq i64 %indvars.iv.next1940, %wide.trip.count1943
  br i1 %exitcond1944.not, label %._crit_edge1813, label %.lr.ph1812, !llvm.loop !695

bb.ir:                                            ; preds = %bb.im, %bb.hn
  %.pn572.pn.pn = phi { ptr, i32 } [ %i.aap, %bb.hn ], [ %i.afl, %bb.im ] ; 2 uses
  %.not.i.i.i909 = icmp eq ptr %.sroa.01541.0, null
  br i1 %.not.i.i.i909, label %_ZNSt6vectorIfSaIfEED2Ev.exit910, label %.thread1608

.thread1608:                                      ; preds = %bb.id, %bb.hx, %bb.hs, %bb.ir
  %.pn572.pn.pn1611 = phi { ptr, i32 } [ %.pn572.pn.pn, %bb.ir ], [ %.pn568, %bb.hx ], [ %.pn570, %bb.id ], [ %.pn572, %bb.hs ]
  %i.agp = ptrtoint ptr %.sroa.11.0 to i64
  %i.agq = ptrtoint ptr %.sroa.01541.0 to i64
  %i.agr = sub i64 %i.agp, %i.agq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01541.0, i64 noundef %i.agr) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit910

_ZNSt6vectorIfSaIfEED2Ev.exit910:                 ; preds = %.thread1608, %bb.ir
  %.pn572.pn.pn.pn = phi { ptr, i32 } [ %.pn572.pn.pn1611, %.thread1608 ], [ %.pn572.pn.pn, %bb.ir ] ; 2 uses
  %.not.i.i.i911 = icmp eq ptr %.sroa.01547.01606, null
  br i1 %.not.i.i.i911, label %_ZNSt6vectorIfSaIfEED2Ev.exit912, label %bb.is

bb.is:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit910.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit910
  %.pn572.pn.pn.pn1619 = phi { ptr, i32 } [ %i.aao, %_ZNSt6vectorIfSaIfEED2Ev.exit910.thread ], [ %.pn572.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit910 ]
  %.sroa.111552.016021618 = phi ptr [ %i.yy, %_ZNSt6vectorIfSaIfEED2Ev.exit910.thread ], [ %.sroa.111552.01603, %_ZNSt6vectorIfSaIfEED2Ev.exit910 ]
  %.sroa.01547.016051617 = phi ptr [ %i.yx, %_ZNSt6vectorIfSaIfEED2Ev.exit910.thread ], [ %.sroa.01547.01606, %_ZNSt6vectorIfSaIfEED2Ev.exit910 ] ; 2 uses
  %i.ags = ptrtoint ptr %.sroa.111552.016021618 to i64
  %i.agt = ptrtoint ptr %.sroa.01547.016051617 to i64
  %i.agu = sub i64 %i.ags, %i.agt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01547.016051617, i64 noundef %i.agu) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit912

_ZNSt6vectorIfSaIfEED2Ev.exit912:                 ; preds = %bb.hm, %_ZNSt6vectorIfSaIfEED2Ev.exit910, %bb.is, %bb.hd
  %.pn578.pn = phi { ptr, i32 } [ %.pn578, %bb.hd ], [ %i.aan, %bb.hm ], [ %.pn572.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit910 ], [ %.pn572.pn.pn.pn1619, %bb.is ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #30
  br label %bb.it

bb.it:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit912, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863
  %.pn578.pn.pn = phi { ptr, i32 } [ %.pn578.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit912 ], [ %.pn564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.gq
  %.pn582.pn = phi { ptr, i32 } [ %.pn582, %bb.gq ], [ %.pn578.pn.pn, %bb.it ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %58) #30
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853
  %.pn582.pn.pn = phi { ptr, i32 } [ %.pn582.pn, %bb.iu ], [ %.pn561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit853 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.gg, %bb.gc, %bb.fw, %bb.fs
  %.pn590.pn = phi { ptr, i32 } [ %.pn590, %bb.fs ], [ %i.vi, %bb.fw ], [ %.pn582.pn.pn, %bb.iv ], [ %.pn586, %bb.gc ], [ %i.wf, %bb.gg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %54) #30
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839
  %.pn590.pn.pn = phi { ptr, i32 } [ %.pn590.pn, %bb.iw ], [ %.pn558, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  br label %.body931

.critedge1832:                                    ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit799, %._crit_edge1789, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit908, %._crit_edge1792
  %i.agv = getelementptr inbounds nuw i8, ptr %5, i64 592 ; 2 uses
  %i.agw = load i8, ptr %i.agv, align 8, !tbaa !269, !range !166, !noundef !167
  %i.agx = trunc nuw i8 %i.agw to i1
  br i1 %i.agx, label %.preheader1669, label %bb.jh

.preheader1669:                                   ; preds = %.critedge1832
  %i.agy = getelementptr inbounds nuw i8, ptr %5, i64 600 ; 3 uses
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !270 ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 8, !tbaa !753
  %i.ahb = icmp sgt i32 %i.aha, 1
  br i1 %i.ahb, label %.lr.ph1815.preheader, label %._crit_edge1816

.lr.ph1815.preheader:                             ; preds = %.preheader1669
  %.pre1984 = load ptr, ptr %30, align 8, !tbaa !351 ; 2 uses
  %.pre1985 = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.ahc = ptrtoint ptr %.pre1984 to i64
  %i.ahd = ptrtoint ptr %.pre1985 to i64
  %i.ahe = sub i64 %i.ahd, %i.ahc                 ; 2 uses
  %i.ahf = icmp sgt i64 %i.ahe, 0
  %i.ahg = udiv exact i64 %i.ahe, 56
  br label %.lr.ph1815

._crit_edge1816:                                  ; preds = %_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit, %.preheader1669
  %.lcssa1733 = phi ptr [ %i.agz, %.preheader1669 ], [ %i.aiy, %_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit ] ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.lcssa1733, i64 32
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !345 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.lcssa1733, i64 40
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !346
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = ptrtoint ptr %i.ahi to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahn
  %i.ahp = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 98528
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !30 ; 3 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 98536
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !31
  %i.ahu = ptrtoint ptr %i.aht to i64
  %i.ahv = ptrtoint ptr %i.ahr to i64
  %i.ahw = sub i64 %i.ahu, %i.ahv
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.ahw
  %i.ahy = load ptr, ptr %30, align 8, !tbaa !351 ; 3 uses
  %i.ahz = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.aia = ptrtoint ptr %i.ahz to i64
  %i.aib = ptrtoint ptr %i.ahy to i64
  %i.aic = sub i64 %i.aia, %i.aib
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahy, i64 %i.aic
  invoke void @_Z19process_pull_groupsN3gmx8ArrayRefI12t_pull_groupEENS0_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_IK10IndexGroupEE(ptr %i.ahi, ptr %i.aho, ptr %i.ahr, ptr %i.ahx, ptr %i.ahy, ptr %i.aid)
          to label %bb.jg unwind label %.loopexit.split-lp1657.loopexit.split-lp

.lr.ph1815:                                       ; preds = %.lr.ph1815.preheader, %_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit
  %indvars.iv1945 = phi i64 [ 1, %.lr.ph1815.preheader ], [ %indvars.iv.next1946, %_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit ] ; 2 uses
  %i.aie = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 98528
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !30
  %i.aih = getelementptr inbounds nuw [32 x i8], ptr %i.aig, i64 %indvars.iv1945 ; 2 uses
  br i1 %i.ahf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph1815, %bb.iy
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.iy ], [ 0, %.lr.ph1815 ] ; 2 uses
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !21
  %i.aij = getelementptr inbounds nuw [56 x i8], ptr %.pre1984, i64 %indvars.iv.i ; 3 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !21
  %i.ail = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.aii, ptr noundef %i.aik)
          to label %.noexc913 unwind label %.loopexit1664

.noexc913:                                        ; preds = %.lr.ph.i
  %i.aim = icmp eq i32 %i.ail, 0
  br i1 %i.aim, label %bb.jb, label %bb.iy

bb.iy:                                            ; preds = %.noexc913
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ahg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph1815, %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc914 unwind label %.loopexit.split-lp1665

.noexc914:                                        ; preds = %._crit_edge.i
  %i.ain = load ptr, ptr %i.aih, align 8, !tbaa !21
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef 3212, ptr noundef nonnull @.str.608, ptr noundef %i.ain) #29
          to label %bb.iz unwind label %bb.ja

bb.iz:                                            ; preds = %.noexc914
  unreachable

bb.ja:                                            ; preds = %.noexc914
  %i.aio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %28) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %.body931

bb.jb:                                            ; preds = %.noexc913
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aij, i64 32
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !328 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aij, i64 40
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !412 ; 2 uses
  %.not1213.i = icmp eq ptr %i.aiq, %i.ais
  br i1 %.not1213.i, label %_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit, label %.lr.ph.i915

bb.jc:                                            ; preds = %.lr.ph.i915
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 4 ; 2 uses
  %.not12.i = icmp eq ptr %i.ait, %i.ais
  br i1 %.not12.i, label %_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit, label %.lr.ph.i915

.lr.ph.i915:                                      ; preds = %bb.jb, %bb.jc
  %.sroa.0.014.i = phi ptr [ %i.ait, %bb.jc ], [ %i.aiq, %bb.jb ] ; 2 uses
  %i.aiu = load i32, ptr %.sroa.0.014.i, align 4, !tbaa !169 ; 3 uses
  %i.aiv = icmp sgt i32 %i.aiu, -1
  %.not.i916 = icmp slt i32 %i.aiu, %i.at
  %or.cond.i = and i1 %i.aiv, %.not.i916
  br i1 %or.cond.i, label %bb.jc, label %bb.jd

bb.jd:                                            ; preds = %.lr.ph.i915
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc918 unwind label %.loopexit.split-lp1665

.noexc918:                                        ; preds = %bb.jd
  %i.aiw = add nsw i32 %i.aiu, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef 3228, ptr noundef nonnull @.str.675, i32 noundef %i.aiw) #29
          to label %bb.je unwind label %bb.jf

bb.je:                                            ; preds = %.noexc918
  unreachable

bb.jf:                                            ; preds = %.noexc918
  %i.aix = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %.body931

_ZL24atomGroupRangeValidationiN3gmx8ArrayRefIKiEE.exit: ; preds = %bb.jc, %bb.jb
  %indvars.iv.next1946 = add nuw nsw i64 %indvars.iv1945, 1 ; 2 uses
  %i.aiy = load ptr, ptr %i.agy, align 8, !tbaa !270 ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 8, !tbaa !753
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = icmp slt i64 %indvars.iv.next1946, %i.aja
  br i1 %i.ajb, label %.lr.ph1815, label %._crit_edge1816, !llvm.loop !696

.loopexit1664:                                    ; preds = %.lr.ph.i
  %lpad.loopexit1666 = landingpad { ptr, i32 }
          cleanup
  br label %.body931

.loopexit.split-lp1665:                           ; preds = %._crit_edge.i, %bb.jd
  %lpad.loopexit.split-lp1667 = landingpad { ptr, i32 }
          cleanup
  br label %.body931

bb.jg:                                            ; preds = %._crit_edge1816
  %i.ajc = load ptr, ptr %i.agy, align 8, !tbaa !270 ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 32
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !345 ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 40
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !346
  %i.ajh = ptrtoint ptr %i.ajg to i64
  %i.aji = ptrtoint ptr %i.aje to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aje, i64 %i.ajj
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajc, i64 56
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !283 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajc, i64 64
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !344
  %i.ajp = ptrtoint ptr %i.ajo to i64
  %i.ajq = ptrtoint ptr %i.ajm to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajr
  invoke void @_Z15checkPullCoordsN3gmx8ArrayRefIK12t_pull_groupEENS0_IK12t_pull_coordEE(ptr %i.aje, ptr %i.ajk, ptr %i.ajm, ptr %i.ajs)
          to label %bb.jh unwind label %.loopexit.split-lp1657.loopexit.split-lp

bb.jh:                                            ; preds = %bb.jg, %.critedge1832
  %i.ajt = getelementptr inbounds nuw i8, ptr %5, i64 624
  %i.aju = load i8, ptr %i.ajt, align 8, !tbaa !292, !range !166, !noundef !167
  %i.ajv = trunc nuw i8 %i.aju to i1
  br i1 %i.ajv, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.ajw = getelementptr inbounds nuw i8, ptr %5, i64 632
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !293
  %i.ajy = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 98552
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !30 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 98560
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !31
  %i.akd = ptrtoint ptr %i.akc to i64
  %i.ake = ptrtoint ptr %i.aka to i64
  %i.akf = sub i64 %i.akd, %i.ake
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.akf
  %i.akh = load ptr, ptr %30, align 8, !tbaa !351 ; 3 uses
  %i.aki = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.akj = ptrtoint ptr %i.aki to i64
  %i.akk = ptrtoint ptr %i.akh to i64
  %i.akl = sub i64 %i.akj, %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.akl
  invoke void @_Z20make_rotation_groupsP5t_rotN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_IK10IndexGroupEE(ptr noundef %i.ajx, ptr %i.aka, ptr %i.akg, ptr %i.akh, ptr %i.akm)
          to label %bb.jj unwind label %.loopexit.split-lp1657.loopexit.split-lp

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.akn = getelementptr inbounds nuw i8, ptr %5, i64 640
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !321
  %.not601 = icmp eq i32 %i.ako, 0
  br i1 %.not601, label %_ZL16make_swap_groupsP12t_swapcoordsN3gmx8ArrayRefIK10IndexGroupEE.exit, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.akp = getelementptr inbounds nuw i8, ptr %5, i64 648
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !322 ; 2 uses
  %i.akr = load ptr, ptr %30, align 8, !tbaa !351 ; 2 uses
  %i.aks = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akq, i64 48 ; 3 uses
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !325 ; 7 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 64
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !23 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akv, i64 72
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !23
  %i.alb = icmp eq i64 %i.aky, %i.ala
  br i1 %i.alb, label %bb.ju, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader.i: ; preds = %.split.i, %bb.jk
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akq, i64 56 ; 2 uses
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !326
  %.not39.i = icmp eq ptr %i.ald, %i.akv
  br i1 %.not39.i, label %_ZL16make_swap_groupsP12t_swapcoordsN3gmx8ArrayRefIK10IndexGroupEE.exit, label %.lr.ph.i921

.lr.ph.i921:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader.i
  %97 = ptrtoint ptr %i.aks to i64
  %98 = sub i64 %97, %i.akt
  %.fr44.i = freeze i64 %98                       ; 2 uses
  %i.ale = icmp sgt i64 %.fr44.i, 0
  %i.alf = udiv exact i64 %.fr44.i, 56
  br i1 %i.ale, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i921, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i
  %indvars.iv.i923 = phi i64 [ %indvars.iv.next.i924, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i ], [ 0, %.lr.ph.i921 ] ; 4 uses
  %i.alg = phi ptr [ %i.anb, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i ], [ %i.akv, %.lr.ph.i921 ]
  %i.alh = getelementptr inbounds nuw [64 x i8], ptr %i.alg, i64 %indvars.iv.i923 ; 6 uses
  %i.ali = icmp samesign ult i64 %indvars.iv.i923, 3
  br i1 %i.ali, label %bb.jl, label %.lr.ph.preheader.i.us.i

bb.jl:                                            ; preds = %.lr.ph.split.us.i
  %i.alj = trunc nuw nsw i64 %indvars.iv.i923 to i32
  %i.alk = invoke noundef ptr @_Z17enumValueToString22SwapGroupSplittingType(i32 noundef %i.alj)
          to label %.lr.ph.preheader.i.us.i unwind label %.loopexit.split-lp1657.loopexit

.lr.ph.preheader.i.us.i:                          ; preds = %bb.jl, %.lr.ph.split.us.i
  %i.all = phi ptr [ @.str.677, %.lr.ph.split.us.i ], [ %i.alk, %bb.jl ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.jm, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.jm ] ; 2 uses
  %i.alm = load ptr, ptr %i.alh, align 8, !tbaa !21
  %i.aln = getelementptr inbounds nuw [56 x i8], ptr %i.akr, i64 %indvars.iv.i.us.i ; 3 uses
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !21
  %i.alp = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.alm, ptr noundef %i.alo)
          to label %.noexc926 unwind label %.loopexit1656

.noexc926:                                        ; preds = %.lr.ph.i.us.i
  %i.alq = icmp eq i32 %i.alp, 0
  br i1 %i.alq, label %_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us.i, label %bb.jm

bb.jm:                                            ; preds = %.noexc926
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %i.alf
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.i922, label %.lr.ph.i.us.i, !llvm.loop !3

_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us.i: ; preds = %.noexc926
  %i.alr = getelementptr inbounds nuw i8, ptr %i.aln, i64 32 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.aln, i64 40 ; 2 uses
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !412
  %i.alu = load ptr, ptr %i.alr, align 8, !tbaa !328
  %i.alv = ptrtoint ptr %i.alt to i64
  %i.alw = ptrtoint ptr %i.alu to i64
  %i.alx = sub i64 %i.alv, %i.alw
  %i.aly = ashr exact i64 %i.alx, 2               ; 2 uses
  %i.alz = trunc i64 %i.aly to i32                ; 2 uses
  %i.ama = icmp sgt i32 %i.alz, 0
  br i1 %i.ama, label %bb.jn, label %.split42.us.i

bb.jn:                                            ; preds = %_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us.i
  %i.amb = load ptr, ptr @stderr, align 8, !tbaa !343
  %i.amc = load ptr, ptr %i.alh, align 8, !tbaa !21
  %i.amd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amb, ptr noundef nonnull @.str.678, ptr noundef %i.all, ptr noundef %i.amc, i32 noundef %i.alz) #34 ; 0 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alh, i64 32 ; 3 uses
  %i.amf = and i64 %i.aly, 2147483647             ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alh, i64 40 ; 2 uses
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !412 ; 2 uses
  %i.ami = load ptr, ptr %i.ame, align 8, !tbaa !328 ; 5 uses
  %i.amj = ptrtoint ptr %i.amh to i64
  %i.amk = ptrtoint ptr %i.ami to i64
  %i.aml = sub i64 %i.amj, %i.amk
  %i.amm = ashr exact i64 %i.aml, 2               ; 3 uses
  %i.amn = icmp ugt i64 %i.amf, %i.amm
  br i1 %i.amn, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.amo = icmp ult i64 %i.amf, %i.amm
  br i1 %i.amo, label %bb.jp, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i

bb.jp:                                            ; preds = %bb.jo
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %i.amf ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %i.amh, %i.amp
  br i1 %.not.i.i.us.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us.i:   ; preds = %bb.jp
  store ptr %i.amp, ptr %i.amg, align 8, !tbaa !412
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i

bb.jq:                                            ; preds = %bb.jn
  %i.amq = sub nuw nsw i64 %i.amf, %i.amm
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ame, i64 noundef %i.amq)
          to label %.noexc927 unwind label %.loopexit.split-lp1657.loopexit

.noexc927:                                        ; preds = %bb.jq
  %.pre.i = load ptr, ptr %i.ame, align 8, !tbaa !347
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i:          ; preds = %.noexc927, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us.i, %bb.jp, %bb.jo
  %i.amr = phi ptr [ %.pre.i, %.noexc927 ], [ %i.ami, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us.i ], [ %i.ami, %bb.jp ], [ %i.ami, %bb.jo ] ; 2 uses
  %i.ams = load ptr, ptr %i.alr, align 8, !tbaa !347 ; 3 uses
  %i.amt = load ptr, ptr %i.als, align 8, !tbaa !347
  %i.amu = ptrtoint ptr %i.amt to i64
  %i.amv = ptrtoint ptr %i.ams to i64
  %i.amw = sub i64 %i.amu, %i.amv                 ; 3 uses
  %i.amx = icmp sgt i64 %i.amw, 4
  br i1 %i.amx, label %bb.jt, label %bb.jr, !prof !348

bb.jr:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i
  %i.amy = icmp eq i64 %i.amw, 4
  br i1 %i.amy, label %bb.js, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i

bb.js:                                            ; preds = %bb.jr
  %i.amz = load i32, ptr %i.ams, align 4, !tbaa !169
  store i32 %i.amz, ptr %i.amr, align 4, !tbaa !169
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i

bb.jt:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.amr, ptr align 4 %i.ams, i64 %i.amw, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i: ; preds = %bb.jt, %bb.js, %bb.jr
  %indvars.iv.next.i924 = add nuw nsw i64 %indvars.iv.i923, 1 ; 2 uses
  %i.ana = load ptr, ptr %i.alc, align 8, !tbaa !326
  %i.anb = load ptr, ptr %i.aku, align 8, !tbaa !325 ; 2 uses
  %i.anc = ptrtoint ptr %i.ana to i64
  %i.and = ptrtoint ptr %i.anb to i64
  %i.ane = sub i64 %i.anc, %i.and
  %i.anf = ashr exact i64 %i.ane, 6
  %.not.us.i = icmp eq i64 %i.anf, %indvars.iv.next.i924
  br i1 %.not.us.i, label %_ZL16make_swap_groupsP12t_swapcoordsN3gmx8ArrayRefIK10IndexGroupEE.exit, label %.lr.ph.split.us.i, !llvm.loop !697

bb.ju:                                            ; preds = %bb.jk
  %i.ang = icmp eq i64 %i.aky, 0
  br i1 %i.ang, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.ju
  %i.anh = load ptr, ptr %i.akw, align 8, !tbaa !21
  %i.ani = load ptr, ptr %i.akv, align 8, !tbaa !21
  %bcmp.i.i = call i32 @bcmp(ptr %i.ani, ptr %i.anh, i64 %i.aky)
  %i.anj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.anj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %.split.i, %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc928 unwind label %.loopexit.split-lp1657.loopexit.split-lp

.noexc928:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ank = load ptr, ptr %i.aku, align 8, !tbaa !325
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !21
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 3733, ptr noundef nonnull @.str.676, ptr noundef %i.anl) #29
          to label %bb.jv unwind label %bb.jw

bb.jv:                                            ; preds = %.noexc928
  unreachable

bb.jw:                                            ; preds = %.noexc928
  %i.anm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %.body931

.lr.ph.split.i:                                   ; preds = %.lr.ph.i921
  %i.ann = invoke noundef ptr @_Z17enumValueToString22SwapGroupSplittingType(i32 noundef 0)
          to label %._crit_edge.i.i922 unwind label %.loopexit.split-lp1657.loopexit.split-lp ; 0 uses

._crit_edge.i.i922:                               ; preds = %bb.jm, %.lr.ph.split.i
  %i.ano = phi ptr [ %i.akv, %.lr.ph.split.i ], [ %i.alh, %bb.jm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc930 unwind label %.loopexit.split-lp1657.loopexit.split-lp

.noexc930:                                        ; preds = %._crit_edge.i.i922
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !21
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef 3212, ptr noundef nonnull @.str.608, ptr noundef %i.anp) #29
          to label %bb.jx unwind label %bb.jy

bb.jx:                                            ; preds = %.noexc930
  unreachable

bb.jy:                                            ; preds = %.noexc930
  %i.anq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %.body931

.split42.us.i:                                    ; preds = %_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc933 unwind label %.loopexit.split-lp1657.loopexit.split-lp

.noexc933:                                        ; preds = %.split42.us.i
  %i.anr = load ptr, ptr %i.alh, align 8, !tbaa !21
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %26, i32 noundef 3757, ptr noundef nonnull @.str.679, ptr noundef %i.anr) #29
          to label %bb.jz unwind label %bb.ka

bb.jz:                                            ; preds = %.noexc933
  unreachable

bb.ka:                                            ; preds = %.noexc933
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %.body931

_ZL16make_swap_groupsP12t_swapcoordsN3gmx8ArrayRefIK10IndexGroupEE.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit.us.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader.i, %bb.jj
  %i.ant = getelementptr inbounds nuw i8, ptr %5, i64 656
  %i.anu = load i8, ptr %i.ant, align 8, !tbaa !296, !range !166, !noundef !167
  %i.anv = trunc nuw i8 %i.anu to i1
  br i1 %i.anv, label %bb.kb, label %_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit

bb.kb:                                            ; preds = %_ZL16make_swap_groupsP12t_swapcoordsN3gmx8ArrayRefIK10IndexGroupEE.exit
  %i.anw = getelementptr inbounds nuw i8, ptr %5, i64 664
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !754 ; 5 uses
  %i.any = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 81920 ; 4 uses
  %i.aoa = load ptr, ptr %30, align 8, !tbaa !351 ; 2 uses
  %i.aob = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.aoc = ptrtoint ptr %i.aoa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.aod = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.aod, ptr %23, align 8, !tbaa !17
  %i.aoe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.anz) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i64 %i.aoe, ptr %i.m, align 8, !tbaa !19
  %i.aof = icmp ugt i64 %i.aoe, 15
  br i1 %i.aof, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.kb
  %i.aog = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc941 unwind label %.loopexit.split-lp1657.loopexit.split-lp ; 2 uses

.noexc941:                                        ; preds = %.noexc.i.i
  store ptr %i.aog, ptr %23, align 8, !tbaa !21
  %i.aoh = load i64, ptr %i.m, align 8, !tbaa !19
  store i64 %i.aoh, ptr %i.aod, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc941, %bb.kb
  %i.aoi = phi ptr [ %i.aog, %.noexc941 ], [ %i.aod, %bb.kb ] ; 2 uses
  switch i64 %i.aoe, label %bb.kd [
    i64 1, label %bb.kc
    i64 0, label %bb.ke
  ]

bb.kc:                                            ; preds = %._crit_edge.i.i.i
  %i.aoj = load i8, ptr %i.anz, align 1, !tbaa !22
  store i8 %i.aoj, ptr %i.aoi, align 1, !tbaa !22
  br label %bb.ke

bb.kd:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoi, ptr nonnull align 1 %i.anz, i64 %i.aoe, i1 false)
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc, %._crit_edge.i.i.i
  %i.aok = load i64, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.aok, ptr %i.aol, align 8, !tbaa !23
  %i.aom = load ptr, ptr %23, align 8, !tbaa !21
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 %i.aok
  store i8 0, ptr %i.aon, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %99 = ptrtoint ptr %i.aob to i64
  %100 = sub i64 %99, %i.aoc                      ; 2 uses
  %i.aoo = icmp sgt i64 %100, 0
  br i1 %i.aoo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i934

.lr.ph.preheader.i.i:                             ; preds = %bb.ke
  %i.aop = udiv exact i64 %100, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.kf, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.kf ] ; 2 uses
  %i.aoq = load ptr, ptr %23, align 8, !tbaa !21
  %i.aor = getelementptr inbounds nuw [56 x i8], ptr %i.aoa, i64 %indvars.iv.i.i ; 3 uses
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !21
  %i.aot = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.aoq, ptr noundef %i.aos)
          to label %.noexc21.i unwind label %.loopexit29.i

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.aou = icmp eq i32 %i.aot, 0
  br i1 %i.aou, label %bb.ki, label %bb.kf

bb.kf:                                            ; preds = %.noexc21.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.aop
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i934, label %.lr.ph.i.i, !llvm.loop !3

._crit_edge.i.i934:                               ; preds = %bb.kf, %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i

.noexc22.i:                                       ; preds = %._crit_edge.i.i934
  %i.aov = load ptr, ptr %23, align 8, !tbaa !21
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 3212, ptr noundef nonnull @.str.608, ptr noundef %i.aov) #29
          to label %bb.kg unwind label %bb.kh

bb.kg:                                            ; preds = %.noexc22.i
  unreachable

bb.kh:                                            ; preds = %.noexc22.i
  %i.aow = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %.body.i

bb.ki:                                            ; preds = %.noexc21.i
  %i.aox = load ptr, ptr %23, align 8, !tbaa !21  ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, %i.aod
  br i1 %i.aoy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935: ; preds = %bb.ki
  %i.aoz = load i64, ptr %i.aod, align 8, !tbaa !22
  %i.apa = add i64 %i.aoz, 1
  call void @_ZdlPvm(ptr noundef %i.aox, i64 noundef %i.apa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aor, i64 32 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aor, i64 40
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !412
  %i.ape = load ptr, ptr %i.apb, align 8, !tbaa !328
  %i.apf = ptrtoint ptr %i.apd to i64
  %i.apg = ptrtoint ptr %i.ape to i64
  %i.aph = sub i64 %i.apf, %i.apg
  %i.api = lshr exact i64 %i.aph, 2
  %i.apj = trunc i64 %i.api to i32                ; 3 uses
  store i32 %i.apj, ptr %i.anx, align 8, !tbaa !756
  %i.apk = icmp sgt i32 %i.apj, 0
  br i1 %i.apk, label %bb.kj, label %_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit

bb.kj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.apl = load ptr, ptr @stderr, align 8, !tbaa !343
  %i.apm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apl, ptr noundef nonnull @.str.680, ptr noundef nonnull %i.anz, i32 noundef %i.apj) #34 ; 0 uses
  %i.apn = load i32, ptr %i.anx, align 8, !tbaa !756
  %i.apo = sext i32 %i.apn to i64
  %i.app = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.10, i32 noundef 3777, i64 noundef %i.apo, i64 noundef 4)
          to label %.noexc942 unwind label %.loopexit.split-lp1657.loopexit.split-lp ; 2 uses

.noexc942:                                        ; preds = %bb.kj
  %i.apq = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  store ptr %i.app, ptr %i.apq, align 8, !tbaa !347
  %i.apr = load i32, ptr %i.anx, align 8, !tbaa !756
  %i.aps = icmp sgt i32 %i.apr, 0
  br i1 %i.aps, label %.lr.ph.i936, label %_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit

.lr.ph.i936:                                      ; preds = %.noexc942
  %i.apt = load ptr, ptr %i.apb, align 8, !tbaa !328
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kk, %.lr.ph.i936
  %indvars.iv.i937 = phi i64 [ 0, %.lr.ph.i936 ], [ %indvars.iv.next.i938, %bb.kk ] ; 3 uses
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %indvars.iv.i937
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !169
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %indvars.iv.i937
  store i32 %i.apv, ptr %i.apw, align 4, !tbaa !169
  %indvars.iv.next.i938 = add nuw nsw i64 %indvars.iv.i937, 1 ; 2 uses
  %i.apx = load i32, ptr %i.anx, align 8, !tbaa !756
  %i.apy = sext i32 %i.apx to i64
  %i.apz = icmp slt i64 %indvars.iv.next.i938, %i.apy
  br i1 %i.apz, label %bb.kk, label %_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit, !llvm.loop !698

.loopexit29.i:                                    ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i934
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit29.i, %bb.kh
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aow, %bb.kh ], [ %lpad.loopexit.i, %.loopexit29.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.aqa = load ptr, ptr %23, align 8, !tbaa !21  ; 2 uses
  %i.aqb = icmp eq ptr %i.aqa, %i.aod
  br i1 %i.aqb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %.body.i
  %i.aqc = load i64, ptr %i.aod, align 8, !tbaa !22
  %i.aqd = add i64 %i.aqc, 1
  call void @_ZdlPvm(ptr noundef %i.aqa, i64 noundef %i.aqd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body931

_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit: ; preds = %bb.kk, %.noexc942, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZL16make_swap_groupsP12t_swapcoordsN3gmx8ArrayRefIK10IndexGroupEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #30
  %i.aqe = load ptr, ptr %30, align 8, !tbaa !351 ; 4 uses
  %i.aqf = load ptr, ptr %i.av, align 8, !tbaa !352
  %i.aqg = ptrtoint ptr %i.aqf to i64
  %i.aqh = ptrtoint ptr %i.aqe to i64
  %i.aqi = sub i64 %i.aqg, %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqe, i64 %i.aqi ; 2 uses
  invoke void @_ZN3gmx19IndexGroupsAndNamesC1ENS_8ArrayRefIK10IndexGroupEE(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr %i.aqe, ptr %i.aqj)
          to label %bb.kl unwind label %bb.ky

bb.kl:                                            ; preds = %_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit
  %i.aqk = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !758 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !758 ; 2 uses
  %.not8.i = icmp eq ptr %i.aql, %i.aqn
  br i1 %.not8.i, label %_ZNK3gmx17MDModulesNotifierIRKNS_19IndexGroupsAndNamesENS0_INS_25KeyValueTreeObjectBuilderENS0_IRKNS_15QMInputFileNameENS0_IRKNS_24MdModulesCoulombTypeInfoENS0_IRKNS_19EnsembleTemperatureENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEE6notifyES3_.exit, label %.lr.ph.i945

.lr.ph.i945:                                      ; preds = %bb.kl, %.noexc950
  %.sroa.05.09.i = phi ptr [ %i.aqs, %.noexc950 ], [ %i.aql, %bb.kl ] ; 4 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !172
  %.not.i.i.i946 = icmp eq ptr %i.aqp, null
  br i1 %.not.i.i.i946, label %bb.km, label %_ZNKSt8functionIFvRKN3gmx19IndexGroupsAndNamesEEEclES3_.exit.i

bb.km:                                            ; preds = %.lr.ph.i945
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc949 unwind label %.loopexit.split-lp1652

.noexc949:                                        ; preds = %bb.km
  unreachable

_ZNKSt8functionIFvRKN3gmx19IndexGroupsAndNamesEEEclES3_.exit.i: ; preds = %.lr.ph.i945
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 24
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !760
  invoke void %i.aqr(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i, ptr noundef nonnull align 8 dereferenceable(24) %67)
          to label %.noexc950 unwind label %.loopexit1651, !inline_history !699

.noexc950:                                        ; preds = %_ZNKSt8functionIFvRKN3gmx19IndexGroupsAndNamesEEEclES3_.exit.i
  %i.aqs = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i947 = icmp eq ptr %i.aqs, %i.aqn
  br i1 %.not.i947, label %_ZNK3gmx17MDModulesNotifierIRKNS_19IndexGroupsAndNamesENS0_INS_25KeyValueTreeObjectBuilderENS0_IRKNS_15QMInputFileNameENS0_IRKNS_24MdModulesCoulombTypeInfoENS0_IRKNS_19EnsembleTemperatureENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEE6notifyES3_.exit, label %.lr.ph.i945

_ZNK3gmx17MDModulesNotifierIRKNS_19IndexGroupsAndNamesENS0_INS_25KeyValueTreeObjectBuilderENS0_IRKNS_15QMInputFileNameENS0_IRKNS_24MdModulesCoulombTypeInfoENS0_IRKNS_19EnsembleTemperatureENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEE6notifyES3_.exit: ; preds = %.noexc950, %bb.kl
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #30
  %i.aqt = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16384 ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 7 uses
  store ptr %i.aqv, ptr %69, align 8, !tbaa !17
  %i.aqw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqu) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i64 %i.aqw, ptr %i.l, align 8, !tbaa !19
  %i.aqx = icmp ugt i64 %i.aqw, 15
  br i1 %i.aqx, label %.noexc.i952, label %._crit_edge.i.i951

.noexc.i952:                                      ; preds = %_ZNK3gmx17MDModulesNotifierIRKNS_19IndexGroupsAndNamesENS0_INS_25KeyValueTreeObjectBuilderENS0_IRKNS_15QMInputFileNameENS0_IRKNS_24MdModulesCoulombTypeInfoENS0_IRKNS_19EnsembleTemperatureENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEE6notifyES3_.exit
  %i.aqy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc953 unwind label %bb.kz ; 2 uses

.noexc953:                                        ; preds = %.noexc.i952
  store ptr %i.aqy, ptr %69, align 8, !tbaa !21
  %i.aqz = load i64, ptr %i.l, align 8, !tbaa !19
  store i64 %i.aqz, ptr %i.aqv, align 8, !tbaa !22
  br label %._crit_edge.i.i951

._crit_edge.i.i951:                               ; preds = %.noexc953, %_ZNK3gmx17MDModulesNotifierIRKNS_19IndexGroupsAndNamesENS0_INS_25KeyValueTreeObjectBuilderENS0_IRKNS_15QMInputFileNameENS0_IRKNS_24MdModulesCoulombTypeInfoENS0_IRKNS_19EnsembleTemperatureENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEE6notifyES3_.exit
  %i.ara = phi ptr [ %i.aqy, %.noexc953 ], [ %i.aqv, %_ZNK3gmx17MDModulesNotifierIRKNS_19IndexGroupsAndNamesENS0_INS_25KeyValueTreeObjectBuilderENS0_IRKNS_15QMInputFileNameENS0_IRKNS_24MdModulesCoulombTypeInfoENS0_IRKNS_19EnsembleTemperatureENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEE6notifyES3_.exit ] ; 2 uses
  switch i64 %i.aqw, label %bb.ko [
    i64 1, label %bb.kn
    i64 0, label %bb.kp
  ]
end_hunk_0
begin_hunk_1_@_Z8do_indexPKcRKSt8optionalINSt10filesystem7__cxx114pathEEP10gmx_mtop_tbRKN3gmx18MDModulesNotifiersEP10t_inputrecP14WarningHandler:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957: ; preds = %bb.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i955
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #30
  %i.ark = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 12288 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 7 uses
  store ptr %i.arm, ptr %71, align 8, !tbaa !17
  %i.arn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.arl) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i64 %i.arn, ptr %i.k, align 8, !tbaa !19
  %i.aro = icmp ugt i64 %i.arn, 15
  br i1 %i.aro, label %.noexc.i959, label %._crit_edge.i.i958

.noexc.i959:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957
  %i.arp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc960 unwind label %bb.lb ; 2 uses

.noexc960:                                        ; preds = %.noexc.i959
  store ptr %i.arp, ptr %71, align 8, !tbaa !21
  %i.arq = load i64, ptr %i.k, align 8, !tbaa !19
  store i64 %i.arq, ptr %i.arm, align 8, !tbaa !22
  br label %._crit_edge.i.i958

._crit_edge.i.i958:                               ; preds = %.noexc960, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957
  %i.arr = phi ptr [ %i.arp, %.noexc960 ], [ %i.arm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957 ] ; 2 uses
  switch i64 %i.arn, label %bb.ks [
    i64 1, label %bb.kr
    i64 0, label %bb.kt
  ]

bb.kr:                                            ; preds = %._crit_edge.i.i958
  %i.ars = load i8, ptr %i.arl, align 1, !tbaa !22
  store i8 %i.ars, ptr %i.arr, align 1, !tbaa !22
  br label %bb.kt

bb.ks:                                            ; preds = %._crit_edge.i.i958
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arr, ptr nonnull align 1 %i.arl, i64 %i.arn, i1 false)
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %._crit_edge.i.i958
  %i.art = load i64, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 %i.art, ptr %i.aru, align 8, !tbaa !23
  %i.arv = load ptr, ptr %71, align 8, !tbaa !21
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.art
  store i8 0, ptr %i.arw, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  invoke void @_ZN3gmx11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %70, ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %bb.ku unwind label %bb.lc

bb.ku:                                            ; preds = %bb.kt
  %i.arx = load ptr, ptr %71, align 8, !tbaa !21  ; 2 uses
  %i.ary = icmp eq ptr %i.arx, %i.arm
  br i1 %i.ary, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962: ; preds = %bb.ku
  %i.arz = load i64, ptr %i.arm, align 8, !tbaa !22
  %i.asa = add i64 %i.arz, 1
  call void @_ZdlPvm(ptr noundef %i.arx, i64 noundef %i.asa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964: ; preds = %bb.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  %i.asb = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 3 uses
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !31
  %i.asd = load ptr, ptr %70, align 8, !tbaa !30  ; 3 uses
  %i.ase = ptrtoint ptr %i.asc to i64
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = sub i64 %i.ase, %i.asf                 ; 2 uses
  %i.ash = ashr exact i64 %i.asg, 5
  %i.asi = mul nsw i64 %i.ash, 3
  %i.asj = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 4 uses
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !31
  %i.asl = load ptr, ptr %68, align 8, !tbaa !30
  %i.asm = ptrtoint ptr %i.ask to i64
  %i.asn = ptrtoint ptr %i.asl to i64
  %i.aso = sub i64 %i.asm, %i.asn
  %i.asp = ashr exact i64 %i.aso, 5
  %.not606 = icmp eq i64 %i.asi, %i.asp
  br i1 %.not606, label %bb.lg, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %72, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.kw unwind label %bb.ld

bb.kw:                                            ; preds = %bb.kv
  %i.asq = load ptr, ptr %i.asb, align 8, !tbaa !31
  %i.asr = load ptr, ptr %70, align 8, !tbaa !30
  %i.ass = ptrtoint ptr %i.asq to i64
  %i.ast = ptrtoint ptr %i.asr to i64
  %i.asu = sub i64 %i.ass, %i.ast
  %i.asv = ashr exact i64 %i.asu, 5
  %i.asw = load ptr, ptr %i.asj, align 8, !tbaa !31
  %i.asx = load ptr, ptr %68, align 8, !tbaa !30
  %i.asy = ptrtoint ptr %i.asw to i64
  %i.asz = ptrtoint ptr %i.asx to i64
  %i.ata = sub i64 %i.asy, %i.asz
  %i.atb = ashr exact i64 %i.ata, 5
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %72, i32 noundef 4383, ptr noundef nonnull @.str.651, i64 noundef %i.asv, i64 noundef %i.atb) #29
          to label %bb.kx unwind label %bb.le

bb.kx:                                            ; preds = %bb.kw
  unreachable

bb.ky:                                            ; preds = %_ZL14make_IMD_groupP5t_IMDPKcN3gmx8ArrayRefIK10IndexGroupEE.exit
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %bb.wv

.loopexit1651:                                    ; preds = %_ZNKSt8functionIFvRKN3gmx19IndexGroupsAndNamesEEEclES3_.exit.i
  %lpad.loopexit1653 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wu

.loopexit.split-lp1652:                           ; preds = %bb.km
  %lpad.loopexit.split-lp1654 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wu

bb.kz:                                            ; preds = %.noexc.i952
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967

bb.la:                                            ; preds = %bb.kp
  %i.ate = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atf = load ptr, ptr %69, align 8, !tbaa !21  ; 2 uses
  %i.atg = icmp eq ptr %i.atf, %i.aqv
  br i1 %i.atg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965: ; preds = %bb.la
  %i.ath = load i64, ptr %i.aqv, align 8, !tbaa !22
  %i.ati = add i64 %i.ath, 1
  call void @_ZdlPvm(ptr noundef %i.atf, i64 noundef %i.ati) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965, %bb.kz
  %.pn602 = phi { ptr, i32 } [ %i.atd, %bb.kz ], [ %i.ate, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965 ], [ %i.ate, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  br label %bb.wt

bb.lb:                                            ; preds = %.noexc.i959
  %i.atj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970

bb.lc:                                            ; preds = %bb.kt
  %i.atk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atl = load ptr, ptr %71, align 8, !tbaa !21  ; 2 uses
  %i.atm = icmp eq ptr %i.atl, %i.arm
  br i1 %i.atm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968: ; preds = %bb.lc
  %i.atn = load i64, ptr %i.arm, align 8, !tbaa !22
  %i.ato = add i64 %i.atn, 1
  call void @_ZdlPvm(ptr noundef %i.atl, i64 noundef %i.ato) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970: ; preds = %bb.lc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968, %bb.lb
  %.pn604 = phi { ptr, i32 } [ %i.atj, %bb.lb ], [ %i.atk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968 ], [ %i.atk, %bb.lc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  br label %bb.ws

bb.ld:                                            ; preds = %bb.kv
  %i.atp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.le:                                            ; preds = %bb.kw
  %i.atq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %72) #30
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.pn663 = phi { ptr, i32 } [ %i.atq, %bb.le ], [ %i.atp, %bb.ld ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br label %.body989

bb.lg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.asg
  %i.ats = invoke fastcc noundef zeroext i1 @_ZL12do_numberingiP16SimulationGroupsN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_IK10IndexGroupEE23SimulationAtomGroupTypei13GroupCoveragebP14WarningHandler(i32 noundef %i.at, ptr noundef nonnull %i.ar, ptr %i.asd, ptr %i.atr, ptr %i.aqe, ptr %i.aqj, i32 noundef 2, i32 noundef %i.dj, i32 noundef 1, i1 noundef zeroext %3, ptr noundef nonnull %6)
          to label %bb.lh unwind label %bb.na     ; 0 uses

bb.lh:                                            ; preds = %bb.lg
  %i.att = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.atu = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !412
  %i.atw = load ptr, ptr %i.att, align 8, !tbaa !328
  %i.atx = ptrtoint ptr %i.atv to i64
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = sub i64 %i.atx, %i.aty                 ; 2 uses
  %i.aua = lshr exact i64 %i.atz, 2               ; 2 uses
  %i.aub = trunc i64 %i.aua to i32                ; 2 uses
  %i.auc = load ptr, ptr %68, align 8, !tbaa !30  ; 3 uses
  %i.aud = load ptr, ptr %i.asj, align 8, !tbaa !31 ; 2 uses
  %i.aue = ptrtoint ptr %i.auc to i64
  %i.auf = ptrtoint ptr %i.aud to i64
  %i.aug = sub i64 %i.auf, %i.aue
  %i.auh = ashr exact i64 %i.aug, 5               ; 3 uses
  %i.aui = mul i64 %i.aua, 12884901888
  %sext1622 = add i64 %i.aui, -12884901888
  %i.auj = ashr exact i64 %sext1622, 32
  %i.auk = icmp eq i64 %i.auh, %i.auj
  br i1 %i.auk, label %bb.li, label %.invoke

bb.li:                                            ; preds = %bb.lh
  %i.aul = urem i64 %i.auh, 3
  %i.aum = icmp eq i64 %i.aul, 0
  br i1 %i.aum, label %bb.lj, label %.invoke

.invoke:                                          ; preds = %bb.li, %bb.lh
  %i.aun = phi ptr [ @.str.682, %bb.lh ], [ @.str.684, %bb.li ]
  %i.auo = phi ptr [ @.str.683, %bb.lh ], [ @.str.685, %bb.li ]
  %i.aup = phi i32 [ 2098, %bb.lh ], [ 2099, %bb.li ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.aun, ptr noundef nonnull %i.auo, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL17convertGroupRvecsP14WarningHandlerN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKciENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef %i.aup) #29
          to label %.cont unwind label %bb.nb

.cont:                                            ; preds = %.invoke
  unreachable

bb.lj:                                            ; preds = %bb.li
  %sext1623 = shl i64 %i.atz, 30
  %i.auq = ashr i64 %sext1623, 32                 ; 3 uses
  %i.aur = icmp slt i32 %i.aub, 0
  br i1 %i.aur, label %.noexc.i984, label %bb.lk

.noexc.i984:                                      ; preds = %bb.lj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.686) #29
          to label %.noexc987 unwind label %bb.nb

.noexc987:                                        ; preds = %.noexc.i984
  unreachable

bb.lk:                                            ; preds = %bb.lj
  %.not55.i = icmp eq i32 %i.aub, 0
  br i1 %.not55.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.lk
  %i.aus = mul nuw nsw i64 %i.auq, 12
  %i.aut = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aus) #33
          to label %.noexc988 unwind label %bb.nb ; 2 uses

.noexc988:                                        ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.i.i
  %i.auu = getelementptr inbounds nuw [12 x i8], ptr %i.aut, i64 %i.auq
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i: ; preds = %.noexc988, %bb.lk
  %.sroa.20.0 = phi ptr [ null, %bb.lk ], [ %i.auu, %.noexc988 ] ; 2 uses
  %.sroa.01497.0 = phi ptr [ null, %bb.lk ], [ %i.aut, %.noexc988 ] ; 4 uses
  %.not.i971 = icmp eq ptr %i.aud, %i.auc
  br i1 %.not.i971, label %._crit_edge.i977, label %.lr.ph.i972

.lr.ph.i972:                                      ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i
  %i.auv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  br label %bb.lp

._crit_edge.i977:                                 ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i
  %.sroa.20.4 = phi ptr [ %.sroa.20.0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i ], [ %.sroa.20.3, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 6 uses
  %.sroa.01497.3 = phi ptr [ %.sroa.01497.0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i ], [ %.sroa.01497.2, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 7 uses
  %i.aux = phi ptr [ %.sroa.01497.0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE7reserveEm.exit.i ], [ %i.aya, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 4 uses
  %.not.i.i.i978 = icmp eq ptr %i.aux, %.sroa.20.4
  br i1 %.not.i.i.i978, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %._crit_edge.i977
  store <2 x float> zeroinitializer, ptr %i.aux, align 4, !noalias !761
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aux, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !22, !noalias !761
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backEOS2_.exit.i

bb.lm:                                            ; preds = %._crit_edge.i977
  %i.auy = ptrtoint ptr %.sroa.20.4 to i64
  %i.auz = ptrtoint ptr %.sroa.01497.3 to i64
  %i.ava = sub i64 %i.auy, %i.auz                 ; 4 uses
  %i.avb = icmp eq i64 %i.ava, 9223372036854775800
  br i1 %i.avb, label %bb.ln, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ln:                                            ; preds = %bb.lm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.558) #29
          to label %.noexc34.i unwind label %bb.mk, !noalias !761

.noexc34.i:                                       ; preds = %bb.ln
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.lm
  %i.avc = sdiv exact i64 %i.ava, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.avc, i64 1)
  %i.avd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.avc ; 2 uses
  %i.ave = icmp ult i64 %i.avd, %i.avc
  %i.avf = call i64 @llvm.umin.i64(i64 %i.avd, i64 768614336404564650)
  %i.avg = select i1 %i.ave, i64 768614336404564650, i64 %i.avf ; 3 uses
  %.not.i.i.i.i33.i = icmp ne i64 %i.avg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i33.i)
  %i.avh = mul nuw nsw i64 %i.avg, 12
  %i.avi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avh) #33
          to label %.noexc35.i unwind label %bb.mk, !noalias !761 ; 5 uses

.noexc35.i:                                       ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 %i.ava ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.avj, align 4, !noalias !761
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.avj, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx5.i, align 4, !tbaa !22, !noalias !761
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.01497.3, %.sroa.20.4
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc35.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.avl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.avi, %.noexc35.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.avk, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.01497.3, %.noexc35.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !762, !alias.scope !763, !noalias !761
  %i.avk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.avk, %.sroa.20.4
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !705

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc35.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.avi, %.noexc35.i ], [ %i.avl, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.01497.3, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01497.3, i64 noundef %i.ava) #31, !noalias !761
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.lo, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.avm = getelementptr inbounds nuw [12 x i8], ptr %i.avi, i64 %i.avg
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backEOS2_.exit.i

bb.lp:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i972
  %.sroa.20.1 = phi ptr [ %.sroa.20.0, %.lr.ph.i972 ], [ %.sroa.20.3, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 12 uses
  %.sroa.01497.1 = phi ptr [ %.sroa.01497.0, %.lr.ph.i972 ], [ %.sroa.01497.2, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 13 uses
  %i.avn = phi ptr [ %.sroa.01497.0, %.lr.ph.i972 ], [ %i.aya, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 5 uses
  %.01921.i = phi i64 [ 0, %.lr.ph.i972 ], [ %i.ayb, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  %i.avo = getelementptr [32 x i8], ptr %i.auc, i64 %.01921.i ; 3 uses
  %.val.i = load ptr, ptr %i.avo, align 8, !tbaa !21, !noalias !761
  %i.avp = invoke noundef float @_ZN3gmx15floatFromStringEPKc(ptr noundef %.val.i)
          to label %_ZN3gmxL10fromStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.lu, !noalias !761

bb.lq:                                            ; preds = %_ZN3gmxL10fromStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.2.i
  store float %.sroa.0.0.i, ptr %i.avn, align 4, !noalias !761
  %.sroa.7.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  store float %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx29.i, align 4, !noalias !761
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  store float %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !22, !noalias !761
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE9push_backERKS2_.exit.i

bb.lr:                                            ; preds = %_ZN3gmxL10fromStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.2.i
  %i.avq = ptrtoint ptr %.sroa.20.1 to i64
  %i.avr = ptrtoint ptr %.sroa.01497.1 to i64
  %i.avs = sub i64 %i.avq, %i.avr                 ; 4 uses
  %i.avt = icmp eq i64 %i.avs, 9223372036854775800
  br i1 %i.avt, label %bb.ls, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ls:                                            ; preds = %bb.lr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.558) #29
          to label %.noexc36.i unwind label %.loopexit.split-lp.i981, !noalias !761

.noexc36.i:                                       ; preds = %bb.ls
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.lr
  %i.avu = sdiv exact i64 %i.avs, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.avu, i64 1)
  %i.avv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.avu ; 2 uses
  %i.avw = icmp ult i64 %i.avv, %i.avu
  %i.avx = call i64 @llvm.umin.i64(i64 %i.avv, i64 768614336404564650)
  %i.avy = select i1 %i.avw, i64 768614336404564650, i64 %i.avx ; 3 uses
  %.not.i.i.i.i979 = icmp ne i64 %i.avy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i979)
  %i.avz = mul nuw nsw i64 %i.avy, 12
  %i.awa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avz) #33
          to label %.noexc37.i unwind label %.loopexit12.i, !noalias !761 ; 5 uses

.noexc37.i:                                       ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.avs ; 3 uses
  store float %.sroa.0.0.i, ptr %i.awb, align 4, !noalias !761
  %.sroa.7.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.awb, i64 4
  store float %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx30.i, align 4, !noalias !761
  %.sroa.9.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.awb, i64 8
  store float %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx32.i, align 4, !tbaa !22, !noalias !761
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.01497.1, %.sroa.20.1
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc37.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.awd, %.lr.ph.i.i.i.i.i.i ], [ %i.awa, %.noexc37.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.awc, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.01497.1, %.noexc37.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !762, !alias.scope !764, !noalias !761
  %i.awc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.awc, %.sroa.20.1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !705

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc37.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.awa, %.noexc37.i ], [ %i.awd, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.01497.1, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.lt

bb.lt:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01497.1, i64 noundef %i.avs) #31, !noalias !761
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI10IndexGroupSaIS0_EED2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i

_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI10IndexGroupEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !351
  br label %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !424
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI10IndexGroupSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP10IndexGroupS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_Z21gmx_mtop_global_atomsRK10gmx_mtop_t(ptr dead_on_unwind writable sret(%struct.t_atoms) align 8, ptr noundef nonnull align 8 dereferenceable(768)) local_unnamed_addr #6

declare void @_Z7analysePK7t_atomsbb(ptr dead_on_unwind writable sret(%"class.std::vector.530") align 8, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

declare void @_Z9done_atomP7t_atoms(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !34     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !17
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.i, ptr %i.a, align 8, !tbaa !19
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.l, ptr %i.g, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !22
  store i8 %i.n, ptr %i.m, align 1, !tbaa !22
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !137
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit
  %i.u = phi ptr [ %.pre, %bb.f ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL12do_numberingiP16SimulationGroupsN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_IK10IndexGroupEE23SimulationAtomGroupTypei13GroupCoveragebP14WarningHandler(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr %2, ptr %3, ptr %4, ptr %5, i32 noundef range(i32 0, 10) %6, i32 noundef %7, i32 noundef range(i32 0, 4) %8, i1 noundef zeroext %9, ptr noundef %10) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = zext nneg i32 %6 to i64                  ; 5 uses
  %i.c = getelementptr [24 x i8], ptr %1, i64 %i.b ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = tail call noundef ptr @_Z9shortName23SimulationAtomGroupType(i32 noundef %6) ; 4 uses
  %i.e = sext i32 %0 to i64
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.669, ptr noundef nonnull @.str.10, i32 noundef 3265, i64 noundef range(i64 -2147483648, 2147483648) %i.e, i64 noundef 2) ; 23 uses
  %i.g = icmp sgt i32 %0, 0                       ; 4 uses
  br i1 %i.g, label %iter.check, label %.preheader130

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check271 = icmp ult i32 %0, 64
  br i1 %min.iters.check271, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store <16 x i16> splat (i16 255), ptr %i.i, align 2, !tbaa !802
  store <16 x i16> splat (i16 255), ptr %i.j, align 2, !tbaa !802
  store <16 x i16> splat (i16 255), ptr %i.k, align 2, !tbaa !802
  store <16 x i16> splat (i16 255), ptr %i.l, align 2, !tbaa !802
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !803

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec272 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index273 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next274, %vec.epilog.vector.body ] ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index273
  store <8 x i16> splat (i16 255), ptr %i.n, align 2, !tbaa !802
  %index.next274 = add nuw i64 %index273, 8       ; 2 uses
  %i.o = icmp eq i64 %index.next274, %n.vec272
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !785

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n275 = icmp eq i64 %n.vec272, %wide.trip.count
  br i1 %cmp.n275, label %.preheader130, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec272, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader130:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.p = ptrtoint ptr %3 to i64
  %i.q = ptrtoint ptr %2 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5
  %.not159 = icmp eq ptr %3, %2
  br i1 %.not159, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader130
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %5 to i64
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  %i.x = udiv exact i64 %i.v, 56
  %i.y = icmp ne i32 %8, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = icmp eq i32 %8, 3
  br i1 %i.w, label %.lr.ph.preheader.i.us, label %._crit_edge.i

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph162, %._crit_edge.us
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %._crit_edge.us ], [ 0, %.lr.ph162 ] ; 5 uses
  %.079161.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph162 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv199 ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.b ] ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv.i.us ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = tail call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.ad, ptr noundef %i.af)
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.x
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.lr.ph.i.us, !llvm.loop !3

_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us: ; preds = %.lr.ph.i.us
  %i.ai = trunc nuw nsw i64 %indvars.iv.i.us to i32 ; 2 uses
  %i.aj = icmp eq i64 %indvars.iv199, 0
  %or.cond.us = or i1 %i.y, %i.aj
  br i1 %or.cond.us, label %bb.c, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us

bb.c:                                             ; preds = %_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !412 ; 4 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !329
  %.not.i.us = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !169
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.am, ptr %i.z, align 8, !tbaa !412
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us

bb.e:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !328 ; 4 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %.split.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.e
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.us, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #33 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i32 %i.ai, ptr %i.az, align 4, !tbaa !169
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.not.i17.i.i.us = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !329
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.be) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.us
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !328
  store ptr %i.bb, ptr %i.z, align 8, !tbaa !412
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bf, ptr %i.aa, align 8, !tbaa !329
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us

_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.us, %bb.d, %_Z13getGroupIndexRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK10IndexGroupEE.exit.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !328 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !412 ; 3 uses
  %.not1213.i.us = icmp eq ptr %i.bh, %i.bj
  br i1 %.not1213.i.us, label %._crit_edge.us, label %.lr.ph.i91.us

.lr.ph.i91.us:                                    ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us, %bb.h
  %.sroa.0.014.i.us = phi ptr [ %i.bm, %bb.h ], [ %i.bh, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.0.014.i.us, align 4, !tbaa !169 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  %.not.i92.us = icmp slt i32 %i.bk, %0
  %or.cond.i.us = and i1 %i.bl, %.not.i92.us
  br i1 %or.cond.i.us, label %bb.h, label %.split166.us

bb.h:                                             ; preds = %.lr.ph.i91.us
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.us, i64 4 ; 2 uses
  %.not12.i.us = icmp eq ptr %i.bm, %i.bj
  br i1 %.not12.i.us, label %.lr.ph158.us, label %.lr.ph.i91.us

bb.i:                                             ; preds = %.lr.ph158.us, %bb.j
  %.1157.us = phi i32 [ %.079161.us, %.lr.ph158.us ], [ %i.br, %bb.j ]
  %.sroa.0107.0156.us = phi ptr [ %i.bh, %.lr.ph158.us ], [ %i.bs, %bb.j ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.0107.0156.us, align 4, !tbaa !169 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.bo ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !802 ; 2 uses
  %.not88.us = icmp eq i16 %i.bq, 255
  br i1 %.not88.us, label %bb.j, label %.split169.us

bb.j:                                             ; preds = %bb.i
  store i16 %storemerge.us, ptr %i.bp, align 2, !tbaa !802
  %i.br = add nsw i32 %.1157.us, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0107.0156.us, i64 4 ; 2 uses
  %.not129.us = icmp eq ptr %i.bs, %i.bj
  br i1 %.not129.us, label %._crit_edge.us, label %bb.i

._crit_edge.us:                                   ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us
  %.1.lcssa.us = phi i32 [ %.079161.us, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit.us ], [ %i.br, %bb.j ] ; 2 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %.not.us = icmp eq i64 %i.s, %indvars.iv.next200
  br i1 %.not.us, label %._crit_edge163, label %.lr.ph.preheader.i.us, !llvm.loop !786

.lr.ph158.us:                                     ; preds = %bb.h
  %i.bt = trunc i64 %indvars.iv199 to i16
  %storemerge.us = select i1 %i.ab, i16 0, i16 %i.bt
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  store i16 255, ptr %i.bu, align 2, !tbaa !802
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader130, label %.lr.ph, !llvm.loop !787

._crit_edge163:                                   ; preds = %._crit_edge.us, %.preheader130
  %.079.lcssa = phi i32 [ 0, %.preheader130 ], [ %.1.lcssa.us, %._crit_edge.us ] ; 5 uses
  %.not86 = icmp eq i32 %.079.lcssa, %0           ; 3 uses
  br i1 %.not86, label %.loopexit, label %bb.q

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph162
  %i.bv = phi ptr [ %2, %.lr.ph162 ], [ %i.ac, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 3212, ptr noundef nonnull @.str.608, ptr noundef %i.bw) #29
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  unreachable

common.resume:                                    ; preds = %bb.az, %bb.n, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.l ], [ %i.bz, %bb.n ], [ %.pn, %bb.az ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %._crit_edge.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %common.resume

.split.us:                                        ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.558) #29
  unreachable

.split166.us:                                     ; preds = %.lr.ph.i91.us
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
  %i.by = add nsw i32 %i.bk, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 3228, ptr noundef nonnull @.str.675, i32 noundef %i.by) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.split166.us
  unreachable

bb.n:                                             ; preds = %.split166.us
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %common.resume

.split169.us:                                     ; preds = %bb.i
  %i.ca = trunc nuw nsw i64 %indvars.iv199 to i32
end_hunk_2
