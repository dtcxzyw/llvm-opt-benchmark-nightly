Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/MarkNestedSubsingletons?download=true
inline.NumInlined: 700
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit:bb.a

bb.bg:                                            ; preds = %lean_dec_ref_known.exit
  %i.cj = getelementptr i8, ptr %i.ce, i64 4
  %.val.i807 = load i32, ptr %i.cj, align 4
  %i.ck = lshr i32 %.val.i807, 24
  br label %lean_obj_tag.exit808

lean_obj_tag.exit808:                             ; preds = %bb.bf, %bb.bg
  %.0.i806 = phi i32 [ %i.ci, %bb.bf ], [ %i.ck, %bb.bg ]
  %i.cl = icmp eq i32 %.0.i806, 0
  br i1 %i.cl, label %bb.bh, label %bb.mh

bb.bh:                                            ; preds = %lean_obj_tag.exit808
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !10 ; 31 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, 1
  %.not.i764 = icmp eq i64 %i.cp, 0               ; 10 uses
  br i1 %.not.i764, label %bb.bi, label %lean_inc.exit765

bb.bi:                                            ; preds = %bb.bh
  %.val.i.i809 = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.cq = icmp sgt i32 %.val.i.i809, 0
  br i1 %i.cq, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.cr = add nuw i32 %.val.i.i809, 1
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !12
  br label %lean_inc.exit765

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i810 = icmp eq i32 %.val.i.i809, 0
  br i1 %.not.i.i810, label %lean_inc.exit765, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cs = atomicrmw sub ptr %i.cn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit765

lean_inc.exit765:                                 ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bh
  %.val.i812 = load i32, ptr %i.ce, align 8, !tbaa !12 ; 4 uses
  %i.ct = icmp eq i32 %.val.i812, 1
  br i1 %i.ct, label %.preheader.i815, label %bb.bq

.preheader.i815:                                  ; preds = %lean_inc.exit765
  %i.cu = load ptr, ptr %i.cm, align 8, !tbaa !10 ; 4 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = and i64 %i.cv, 1
  %.not.i7.i817 = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i817, label %bb.bm, label %lean_dec.exit.i818

bb.bm:                                            ; preds = %.preheader.i815
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !12 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.cz = add nsw i32 %i.cx, -1
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !12
  br label %lean_dec.exit.i818

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i.i821 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i821, label %lean_dec.exit.i818, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cu) #4
  br label %lean_dec.exit.i818

lean_dec.exit.i818:                               ; preds = %bb.bp, %bb.bo, %bb.bn, %.preheader.i815
  tail call void @lean_free_object(ptr noundef nonnull %i.ce) #4
  br label %lean_dec_ref_known.exit822

bb.bq:                                            ; preds = %lean_inc.exit765
  %i.da = icmp sgt i32 %.val.i812, 1
  br i1 %i.da, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.db = add nsw i32 %.val.i812, -1
  store i32 %i.db, ptr %i.ce, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit822

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i813 = icmp eq i32 %.val.i812, 0
  br i1 %.not.i.i813, label %lean_dec_ref_known.exit822, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #4
  br label %lean_dec_ref_known.exit822

lean_dec_ref_known.exit822:                       ; preds = %lean_dec.exit.i818, %bb.br, %bb.bs, %bb.bt
  %i.dc = and i64 %i.co, 510
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.bu, label %bb.lc

bb.bu:                                            ; preds = %lean_dec_ref_known.exit822
  %i.de = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_isDecidable(ptr noundef %i.bp, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 14 uses
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = and i64 %i.df, 1
  %.not.i823 = icmp eq i64 %i.dg, 0               ; 3 uses
  br i1 %.not.i823, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dh = lshr i64 %i.df, 1
  %i.di = trunc i64 %i.dh to i32
  br label %lean_obj_tag.exit826

bb.bw:                                            ; preds = %bb.bu
  %i.dj = getelementptr i8, ptr %i.de, i64 4
  %.val.i825 = load i32, ptr %i.dj, align 4
  %i.dk = lshr i32 %.val.i825, 24
  br label %lean_obj_tag.exit826

lean_obj_tag.exit826:                             ; preds = %bb.bv, %bb.bw
  %.0.i824 = phi i32 [ %i.di, %bb.bv ], [ %i.dk, %bb.bw ]
  %i.dl = icmp eq i32 %.0.i824, 0
  br i1 %i.dl, label %bb.bx, label %bb.kk

bb.bx:                                            ; preds = %lean_obj_tag.exit826
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !10 ; 10 uses
  %.val775 = load i32, ptr %i.de, align 8, !tbaa !12
  %i.do = icmp eq i32 %.val775, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.dn to i64               ; 2 uses
  %.pre1022 = and i64 %.pre, 1                    ; 2 uses
  br i1 %i.do, label %lean_dec.exit716, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not.i762 = icmp eq i64 %.pre1022, 0
  br i1 %.not.i762, label %bb.bz, label %lean_inc.exit763

bb.bz:                                            ; preds = %bb.by
  %.val.i.i827 = load i32, ptr %i.dn, align 4, !tbaa !12 ; 3 uses
  %i.dp = icmp sgt i32 %.val.i.i827, 0
  br i1 %i.dp, label %bb.ca, label %bb.cb, !prof !13

bb.ca:                                            ; preds = %bb.bz
  %i.dq = add nuw i32 %.val.i.i827, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !12
  br label %lean_inc.exit763

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i828 = icmp eq i32 %.val.i.i827, 0
  br i1 %.not.i.i828, label %lean_inc.exit763, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dr = atomicrmw sub ptr %i.dn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit763

lean_inc.exit763:                                 ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.by
  br i1 %.not.i823, label %bb.cd, label %lean_dec.exit716

bb.cd:                                            ; preds = %lean_inc.exit763
  %i.ds = load i32, ptr %i.de, align 8, !tbaa !12 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.ce, label %bb.cf, !prof !13

bb.ce:                                            ; preds = %bb.cd
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.de, align 8, !tbaa !12
  br label %lean_dec.exit716

bb.cf:                                            ; preds = %bb.cd
  %.not.i.i714 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i714, label %lean_dec.exit716, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.de) #4
  br label %lean_dec.exit716

lean_dec.exit716:                                 ; preds = %bb.bx, %lean_inc.exit763, %bb.cg, %bb.cf, %bb.ce
  %.0583 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ce ], [ inttoptr (i64 1 to ptr), %lean_inc.exit763 ], [ inttoptr (i64 1 to ptr), %bb.cg ], [ inttoptr (i64 1 to ptr), %bb.cf ], [ %i.de, %bb.bx ] ; 9 uses
  %.not.i830 = icmp eq i64 %.pre1022, 0
  br i1 %.not.i830, label %lean_obj_tag.exit833, label %lean_obj_tag.exit833.thread

lean_obj_tag.exit833:                             ; preds = %lean_dec.exit716
  %i.dv = getelementptr i8, ptr %i.dn, i64 4
  %.val.i832 = load i32, ptr %i.dv, align 4
  %.mask1122 = and i32 %.val.i832, -16777216
  %i.dw = icmp eq i32 %.mask1122, 16777216
  br i1 %i.dw, label %bb.ch, label %bb.dr

lean_obj_tag.exit833.thread:                      ; preds = %lean_dec.exit716
  %i.dx = and i64 %.pre, 8589934590
  %i.dy = icmp eq i64 %i.dx, 2
  br i1 %i.dy, label %bb.ch, label %lean_dec.exit704

bb.ch:                                            ; preds = %lean_obj_tag.exit833.thread, %lean_obj_tag.exit833
  %i.dz = ptrtoint ptr %.0583 to i64
  %i.ea = and i64 %i.dz, 1
  %.not.i834 = icmp eq i64 %i.ea, 0
  br i1 %.not.i834, label %bb.ci, label %lean_del_object.exit

bb.ci:                                            ; preds = %bb.ch
  tail call void @lean_free_object(ptr noundef nonnull %.0583) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ch, %bb.ci
  br i1 %.not.i764, label %bb.cj, label %lean_dec.exit712

bb.cj:                                            ; preds = %lean_del_object.exit
  %i.eb = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.ck, label %bb.cl, !prof !13

bb.ck:                                            ; preds = %bb.cj
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit712

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i710 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i710, label %lean_dec.exit712, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit712

lean_dec.exit712:                                 ; preds = %bb.ck, %bb.cl, %bb.cm, %lean_del_object.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10 ; 5 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = and i64 %i.eg, 1
  %.not.i760 = icmp eq i64 %i.eh, 0
  br i1 %.not.i760, label %bb.cn, label %lean_inc.exit761

bb.cn:                                            ; preds = %lean_dec.exit712
  %.val.i.i835 = load i32, ptr %i.ef, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %.val.i.i835, 0
  br i1 %i.ei, label %bb.co, label %bb.cp, !prof !13

bb.co:                                            ; preds = %bb.cn
  %i.ej = add nuw i32 %.val.i.i835, 1
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !12
  br label %lean_inc.exit761

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i836 = icmp eq i32 %.val.i.i835, 0
  br i1 %.not.i.i836, label %lean_inc.exit761, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ek = atomicrmw sub ptr %i.ef, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit761

lean_inc.exit761:                                 ; preds = %bb.cq, %bb.cp, %bb.co, %lean_dec.exit712
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dn, i32 noundef 1)
  %i.el = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_preprocess(ptr noundef %i.ef, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 11 uses
  %i.em = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.en = and i64 %i.em, 1
  %.not.i838 = icmp eq i64 %i.en, 0               ; 2 uses
  br i1 %.not.i838, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %lean_inc.exit761
  %i.eo = lshr i64 %i.em, 1
  %i.ep = trunc i64 %i.eo to i32
  br label %lean_obj_tag.exit841

bb.cs:                                            ; preds = %lean_inc.exit761
  %i.eq = getelementptr i8, ptr %i.el, i64 4
  %.val.i840 = load i32, ptr %i.eq, align 4
  %i.er = lshr i32 %.val.i840, 24
  br label %lean_obj_tag.exit841

lean_obj_tag.exit841:                             ; preds = %bb.cr, %bb.cs
  %.0.i839 = phi i32 [ %i.ep, %bb.cr ], [ %i.er, %bb.cs ]
  %i.es = icmp eq i32 %.0.i839, 0
  br i1 %i.es, label %bb.ct, label %bb.dn

bb.ct:                                            ; preds = %lean_obj_tag.exit841
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10 ; 5 uses
  %.val774 = load i32, ptr %i.el, align 8, !tbaa !12
  %i.ev = icmp eq i32 %.val774, 1                 ; 2 uses
  br i1 %i.ev, label %lean_dec.exit708, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = and i64 %i.ew, 1
  %.not.i758 = icmp eq i64 %i.ex, 0
  br i1 %.not.i758, label %bb.cv, label %lean_inc.exit759

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i842 = load i32, ptr %i.eu, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i842, 0
  br i1 %i.ey, label %bb.cw, label %bb.cx, !prof !13

bb.cw:                                            ; preds = %bb.cv
  %i.ez = add nuw i32 %.val.i.i842, 1
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !12
  br label %lean_inc.exit759

bb.cx:                                            ; preds = %bb.cv
  %.not.i.i843 = icmp eq i32 %.val.i.i842, 0
  br i1 %.not.i.i843, label %lean_inc.exit759, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fa = atomicrmw sub ptr %i.eu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit759

lean_inc.exit759:                                 ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cu
  br i1 %.not.i838, label %bb.cz, label %lean_dec.exit708

bb.cz:                                            ; preds = %lean_inc.exit759
  %i.fb = load i32, ptr %i.el, align 8, !tbaa !12 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.da, label %bb.db, !prof !13

bb.da:                                            ; preds = %bb.cz
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %i.el, align 8, !tbaa !12
  br label %lean_dec.exit708

bb.db:                                            ; preds = %bb.cz
  %.not.i.i706 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i706, label %lean_dec.exit708, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #4
  br label %lean_dec.exit708

lean_dec.exit708:                                 ; preds = %lean_inc.exit759, %bb.dc, %bb.db, %bb.da, %bb.ct
  %.0581 = phi ptr [ %i.el, %bb.ct ], [ inttoptr (i64 1 to ptr), %bb.da ], [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %lean_inc.exit759 ] ; 2 uses
  %i.fe = tail call ptr @lean_st_ref_take(ptr noundef %1) #4
  %i.ff = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__5_once seq_cst, align 4, !tbaa !16
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.dd, label %bb.de, !prof !13

bb.dd:                                            ; preds = %lean_dec.exit708
  %i.fh = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.de:                                            ; preds = %lean_dec.exit708
  %i.fi = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__5, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__5) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.dd, %bb.de
  %.0.i845 = phi ptr [ %i.fh, %bb.dd ], [ %i.fi, %bb.de ]
  %.val.i.i846 = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.fj = icmp sgt i32 %.val.i.i846, 0
  br i1 %i.fj, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %lean_obj_once.exit
  %i.fk = add nuw i32 %.val.i.i846, 1
  store i32 %i.fk, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref.exit848

bb.dg:                                            ; preds = %lean_obj_once.exit
  %.not.i.i847 = icmp eq i32 %.val.i.i846, 0
  br i1 %.not.i.i847, label %lean_inc_ref.exit848, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fl = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit848

lean_inc_ref.exit848:                             ; preds = %bb.df, %bb.dg, %bb.dh
  %i.fm = tail call ptr @l_Lean_mkAppB(ptr noundef %.0.i845, ptr noundef %i.eu, ptr noundef nonnull %0) #4 ; 6 uses
  %.val.i.i849 = load i32, ptr %i.fm, align 4, !tbaa !12 ; 3 uses
  %i.fn = icmp sgt i32 %.val.i.i849, 0
  br i1 %i.fn, label %bb.di, label %bb.dj, !prof !13

bb.di:                                            ; preds = %lean_inc_ref.exit848
  %i.fo = add nuw i32 %.val.i.i849, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !12
  br label %lean_inc_ref.exit851

bb.dj:                                            ; preds = %lean_inc_ref.exit848
  %.not.i.i850 = icmp eq i32 %.val.i.i849, 0
  br i1 %.not.i.i850, label %lean_inc_ref.exit851, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.fp = atomicrmw sub ptr %i.fm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit851

lean_inc_ref.exit851:                             ; preds = %bb.di, %bb.dj, %bb.dk
  %i.fq = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit_spec__0___redArg(ptr noundef %i.fe, ptr noundef nonnull %0, ptr noundef nonnull %i.fm)
  %i.fr = tail call ptr @lean_st_ref_set(ptr noundef %1, ptr noundef %i.fq) #4 ; 0 uses
  br i1 %i.ev, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %lean_inc_ref.exit851
  %i.fs = getelementptr inbounds nuw i8, ptr %.0581, i64 8
  store ptr %i.fm, ptr %i.fs, align 8, !tbaa !10
  br label %lean_dec_ref.exit633.thread

bb.dm:                                            ; preds = %lean_inc_ref.exit851
  %i.ft = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fm, ptr %i.fu, align 8, !tbaa !10
  br label %lean_dec_ref.exit633.thread

bb.dn:                                            ; preds = %lean_obj_tag.exit841
  %i.fv = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.do, label %bb.dp, !prof !13

bb.do:                                            ; preds = %bb.dn
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit633.thread

bb.dp:                                            ; preds = %bb.dn
  %.not.i632 = icmp eq i32 %i.fv, 0
  br i1 %.not.i632, label %lean_dec_ref.exit633.thread, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit633.thread

bb.dr:                                            ; preds = %lean_obj_tag.exit833
  %i.fy = load i32, ptr %i.dn, align 4, !tbaa !12 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.ds, label %bb.dt, !prof !13

bb.ds:                                            ; preds = %bb.dr
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.dn, align 4, !tbaa !12
  br label %lean_dec.exit704

bb.dt:                                            ; preds = %bb.dr
  %.not.i.i702 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i702, label %lean_dec.exit704, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dn) #4
  br label %lean_dec.exit704

lean_dec.exit704:                                 ; preds = %lean_obj_tag.exit833.thread, %bb.ds, %bb.dt, %bb.du
  %i.gb = tail call zeroext i8 @l_Lean_Expr_isApp(ptr noundef nonnull %0) #4
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.dv, label %bb.ei

bb.dv:                                            ; preds = %lean_dec.exit704
  %i.gd = tail call zeroext i8 @l_Lean_Expr_isForall(ptr noundef nonnull %0) #4
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %bb.dw, label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  %i.gf = tail call zeroext i8 @l_Lean_Expr_isProj(ptr noundef nonnull %0) #4
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.dx, label %bb.eg

bb.dx:                                            ; preds = %bb.dw
  %i.gh = tail call zeroext i8 @l_Lean_Expr_isMData(ptr noundef nonnull %0) #4
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.dy, label %bb.ef

bb.dy:                                            ; preds = %bb.dx
  br i1 %.not.i764, label %bb.dz, label %lean_dec.exit700

bb.dz:                                            ; preds = %bb.dy
  %i.gj = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gl = add nsw i32 %i.gj, -1
  store i32 %i.gl, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit700

bb.eb:                                            ; preds = %bb.dz
  %.not.i.i698 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i698, label %lean_dec.exit700, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit700

lean_dec.exit700:                                 ; preds = %bb.ea, %bb.eb, %bb.ec, %bb.dy
  br i1 %i.do, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %lean_dec.exit700
  %i.gm = getelementptr inbounds nuw i8, ptr %.0583, i64 8
  store ptr %0, ptr %i.gm, align 8, !tbaa !10
  br label %lean_dec_ref.exit633.thread

bb.ee:                                            ; preds = %lean_dec.exit700
  %i.gn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %0, ptr %i.go, align 8, !tbaa !10
  br label %lean_dec_ref.exit633.thread

bb.ef:                                            ; preds = %bb.dx
  %i.gp = ptrtoint ptr %.0583 to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i852 = icmp eq i64 %i.gq, 0
  br i1 %.not.i852, label %.sink.split, label %lean_obj_tag.exit863

bb.eg:                                            ; preds = %bb.dw
  %i.gr = ptrtoint ptr %.0583 to i64
  %i.gs = and i64 %i.gr, 1
  %.not.i854 = icmp eq i64 %i.gs, 0
  br i1 %.not.i854, label %.sink.split, label %lean_obj_tag.exit863

bb.eh:                                            ; preds = %bb.dv
  %i.gt = ptrtoint ptr %.0583 to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i856 = icmp eq i64 %i.gu, 0
  br i1 %.not.i856, label %.sink.split, label %lean_obj_tag.exit863

bb.ei:                                            ; preds = %lean_dec.exit704
  %i.gv = ptrtoint ptr %.0583 to i64
  %i.gw = and i64 %i.gv, 1
  %.not.i858 = icmp eq i64 %i.gw, 0
  br i1 %.not.i858, label %.sink.split, label %lean_obj_tag.exit863

.sink.split:                                      ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef
  tail call void @lean_free_object(ptr noundef nonnull %.0583) #4
  br label %lean_obj_tag.exit863

lean_obj_tag.exit863:                             ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef, %.sink.split
  %i.gx = getelementptr i8, ptr %0, i64 4
  %.val.i862 = load i32, ptr %i.gx, align 4
  %i.gy = lshr i32 %.val.i862, 24
  %trunc = trunc nuw i32 %i.gy to i8
  switch i8 %trunc, label %bb.js [
    i8 5, label %bb.ej
    i8 11, label %bb.fl
    i8 10, label %bb.gr
    i8 7, label %bb.ht
  ]

bb.ej:                                            ; preds = %lean_obj_tag.exit863
  %i.gz = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__0_once seq_cst, align 4, !tbaa !16
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %bb.ej
  %i.hb = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit865

bb.el:                                            ; preds = %bb.ej
  %i.hc = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__0, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__0_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__0) #4
  br label %lean_obj_once.exit865

lean_obj_once.exit865:                            ; preds = %bb.ek, %bb.el
  %.0.i864 = phi ptr [ %i.hb, %bb.ek ], [ %i.hc, %bb.el ] ; 2 uses
  %i.hd = tail call ptr @l_Lean_Expr_getAppNumArgs(ptr noundef nonnull %0) #4 ; 11 uses
  %i.he = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hf = and i64 %i.he, 1
  %.not.i756 = icmp eq i64 %i.hf, 0
  br i1 %.not.i756, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %lean_obj_once.exit865
  %.val.i.i866 = load i32, ptr %i.hd, align 4, !tbaa !12 ; 3 uses
  %i.hg = icmp sgt i32 %.val.i.i866, 0
  br i1 %i.hg, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %bb.em
  %i.hh = add nuw i32 %.val.i.i866, 1
  store i32 %i.hh, ptr %i.hd, align 4, !tbaa !12
  br label %bb.es

bb.eo:                                            ; preds = %bb.em
  %.not.i.i867 = icmp eq i32 %.val.i.i866, 0
  br i1 %.not.i.i867, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hi = atomicrmw sub ptr %i.hd, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.es

bb.eq:                                            ; preds = %lean_obj_once.exit865
  %i.hj = tail call ptr @lean_mk_array(ptr noundef %i.hd, ptr noundef %.0.i864) #4 ; 2 uses
  %i.hk = icmp ult ptr %i.hd, inttoptr (i64 2 to ptr)
  br i1 %i.hk, label %lean_dec.exit696, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.hl = add i64 %i.he, -2
  %i.hm = inttoptr i64 %i.hl to ptr
  br label %lean_dec.exit696

bb.es:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.hn = tail call ptr @lean_mk_array(ptr noundef nonnull %i.hd, ptr noundef %.0.i864) #4 ; 3 uses
  %i.ho = tail call ptr @lean_nat_big_sub(ptr noundef nonnull %i.hd, ptr noundef nonnull inttoptr (i64 3 to ptr)) #4 ; 3 uses
  %i.hp = load i32, ptr %i.hd, align 4, !tbaa !12 ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, 1
  br i1 %i.hq, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %bb.es
  %i.hr = add nsw i32 %i.hp, -1
  store i32 %i.hr, ptr %i.hd, align 4, !tbaa !12
  br label %lean_dec.exit696

bb.eu:                                            ; preds = %bb.es
  %.not.i.i694 = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i694, label %lean_dec.exit696, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hd) #4
  br label %lean_dec.exit696

lean_dec.exit696:                                 ; preds = %bb.er, %bb.eq, %bb.et, %bb.eu, %bb.ev
  %.1.i996 = phi ptr [ %i.ho, %bb.et ], [ %i.ho, %bb.ev ], [ %i.ho, %bb.eu ], [ inttoptr (i64 1 to ptr), %bb.eq ], [ %i.hm, %bb.er ]
  %i.hs = phi ptr [ %i.hn, %bb.et ], [ %i.hn, %bb.ev ], [ %i.hn, %bb.eu ], [ %i.hj, %bb.eq ], [ %i.hj, %bb.er ]
  br i1 %.not.i764, label %bb.ew, label %lean_dec.exit692

bb.ew:                                            ; preds = %lean_dec.exit696
  %i.ht = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %bb.ex, label %bb.ey, !prof !13

bb.ex:                                            ; preds = %bb.ew
  %i.hv = add nsw i32 %i.ht, -1
  store i32 %i.hv, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit692

bb.ey:                                            ; preds = %bb.ew
  %.not.i.i690 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i690, label %lean_dec.exit692, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit692

lean_dec.exit692:                                 ; preds = %bb.ex, %bb.ey, %bb.ez, %lean_dec.exit696
  %.val.i869 = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.hw = icmp sgt i32 %.val.i869, 0
  br i1 %i.hw, label %bb.fa, label %bb.fb, !prof !13

bb.fa:                                            ; preds = %lean_dec.exit692
  %i.hx = add nuw i32 %.val.i869, 2
  store i32 %i.hx, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit

bb.fb:                                            ; preds = %lean_dec.exit692
  %.not.i870 = icmp eq i32 %.val.i869, 0
  br i1 %.not.i870, label %lean_inc_ref_n.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.hy = atomicrmw sub ptr %0, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.hz = tail call ptr @l_Lean_Expr_withAppAux___at___00__private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit_spec__3(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %0, ptr noundef %i.hs, ptr noundef %.1.i996, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 5 uses
  %i.ia = ptrtoint ptr %i.hz to i64               ; 2 uses
  %i.ib = and i64 %i.ia, 1
  %.not.i871 = icmp eq i64 %i.ib, 0
  br i1 %.not.i871, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %lean_inc_ref_n.exit
  %i.ic = lshr i64 %i.ia, 1
  %i.id = trunc i64 %i.ic to i32
  br label %lean_obj_tag.exit874

bb.fe:                                            ; preds = %lean_inc_ref_n.exit
  %i.ie = getelementptr i8, ptr %i.hz, i64 4
  %.val.i873 = load i32, ptr %i.ie, align 4
  %i.if = lshr i32 %.val.i873, 24
  br label %lean_obj_tag.exit874

lean_obj_tag.exit874:                             ; preds = %bb.fd, %bb.fe
  %.0.i872 = phi i32 [ %i.id, %bb.fd ], [ %i.if, %bb.fe ]
  %i.ig = icmp eq i32 %.0.i872, 0
  br i1 %i.ig, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %lean_obj_tag.exit874
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !10 ; 5 uses
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = and i64 %i.ij, 1
  %.not.i754 = icmp eq i64 %i.ik, 0
  br i1 %.not.i754, label %bb.fg, label %lean_inc.exit755

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i875 = load i32, ptr %i.ii, align 4, !tbaa !12 ; 3 uses
  %i.il = icmp sgt i32 %.val.i.i875, 0
  br i1 %i.il, label %bb.fh, label %bb.fi, !prof !13

bb.fh:                                            ; preds = %bb.fg
  %i.im = add nuw i32 %.val.i.i875, 1
  store i32 %i.im, ptr %i.ii, align 4, !tbaa !12
  br label %lean_inc.exit755

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i876 = icmp eq i32 %.val.i.i875, 0
  br i1 %.not.i.i876, label %lean_inc.exit755, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.in = atomicrmw sub ptr %i.ii, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit755

lean_inc.exit755:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.hz, i32 noundef 1)
  br label %lean_inc_ref.exit989

bb.fk:                                            ; preds = %lean_obj_tag.exit874
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 2)
  br label %lean_dec_ref.exit633.thread

bb.fl:                                            ; preds = %lean_obj_tag.exit863
  br i1 %.not.i764, label %bb.fm, label %lean_dec.exit688

bb.fm:                                            ; preds = %bb.fl
  %i.io = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %bb.fn, label %bb.fo, !prof !13

bb.fn:                                            ; preds = %bb.fm
  %i.iq = add nsw i32 %i.io, -1
  store i32 %i.iq, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit688

bb.fo:                                            ; preds = %bb.fm
  %.not.i.i686 = icmp eq i32 %i.io, 0
  br i1 %.not.i.i686, label %lean_dec.exit688, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit688

lean_dec.exit688:                                 ; preds = %bb.fn, %bb.fo, %bb.fp, %bb.fl
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !10 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !10 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !10 ; 6 uses
  %.val.i.i878 = load i32, ptr %i.iw, align 4, !tbaa !12 ; 3 uses
  %i.ix = icmp sgt i32 %.val.i.i878, 0
  br i1 %i.ix, label %bb.fq, label %bb.fr, !prof !13

bb.fq:                                            ; preds = %lean_dec.exit688
  %i.iy = add nuw i32 %.val.i.i878, 1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !12
  br label %lean_inc_ref.exit880

bb.fr:                                            ; preds = %lean_dec.exit688
  %.not.i.i879 = icmp eq i32 %.val.i.i878, 0
  br i1 %.not.i.i879, label %lean_inc_ref.exit880, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.iz = atomicrmw sub ptr %i.iw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit880

lean_inc_ref.exit880:                             ; preds = %bb.fq, %bb.fr, %bb.fs
  %i.ja = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit(ptr noundef nonnull %i.iw, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 6 uses
  %i.jb = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jc = and i64 %i.jb, 1
  %.not.i881 = icmp eq i64 %i.jc, 0
  br i1 %.not.i881, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %lean_inc_ref.exit880
  %i.jd = lshr i64 %i.jb, 1
  %i.je = trunc i64 %i.jd to i32
  br label %lean_obj_tag.exit884

bb.fu:                                            ; preds = %lean_inc_ref.exit880
  %i.jf = getelementptr i8, ptr %i.ja, i64 4
  %.val.i883 = load i32, ptr %i.jf, align 4
  %i.jg = lshr i32 %.val.i883, 24
  br label %lean_obj_tag.exit884

lean_obj_tag.exit884:                             ; preds = %bb.ft, %bb.fu
  %.0.i882 = phi i32 [ %i.je, %bb.ft ], [ %i.jg, %bb.fu ]
  %i.jh = icmp eq i32 %.0.i882, 0
  br i1 %i.jh, label %bb.fv, label %bb.gq

bb.fv:                                            ; preds = %lean_obj_tag.exit884
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !10 ; 10 uses
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = and i64 %i.jk, 1
  %.not.i752 = icmp eq i64 %i.jl, 0
  br i1 %.not.i752, label %bb.fw, label %lean_inc.exit753.thread

bb.fw:                                            ; preds = %bb.fv
  %.val.i.i885 = load i32, ptr %i.jj, align 4, !tbaa !12 ; 3 uses
  %i.jm = icmp sgt i32 %.val.i.i885, 0
  br i1 %i.jm, label %bb.fx, label %bb.fy, !prof !13

bb.fx:                                            ; preds = %bb.fw
  %i.jn = add nuw i32 %.val.i.i885, 1
  store i32 %i.jn, ptr %i.jj, align 4, !tbaa !12
  br label %lean_inc.exit753

bb.fy:                                            ; preds = %bb.fw
  %.not.i.i886 = icmp eq i32 %.val.i.i885, 0
  br i1 %.not.i.i886, label %lean_inc.exit753, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.jo = atomicrmw sub ptr %i.jj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit753

lean_inc.exit753:                                 ; preds = %bb.fz, %bb.fy, %bb.fx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ja, i32 noundef 1)
  %.not1021 = icmp eq ptr %i.iw, %i.jj
  br i1 %.not1021, label %bb.gj, label %bb.ga

lean_inc.exit753.thread:                          ; preds = %bb.fv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ja, i32 noundef 1)
  %.not10211110 = icmp eq ptr %i.iw, %i.jj
  br i1 %.not10211110, label %lean_dec.exit684, label %bb.ga

bb.ga:                                            ; preds = %lean_inc.exit753.thread, %lean_inc.exit753
  %i.jp = ptrtoint ptr %i.iu to i64
  %i.jq = and i64 %i.jp, 1
  %.not.i750 = icmp eq i64 %i.jq, 0
  br i1 %.not.i750, label %bb.gb, label %lean_inc.exit751

bb.gb:                                            ; preds = %bb.ga
  %.val.i.i888 = load i32, ptr %i.iu, align 4, !tbaa !12 ; 3 uses
  %i.jr = icmp sgt i32 %.val.i.i888, 0
  br i1 %i.jr, label %bb.gc, label %bb.gd, !prof !13

bb.gc:                                            ; preds = %bb.gb
  %i.js = add nuw i32 %.val.i.i888, 1
  store i32 %i.js, ptr %i.iu, align 4, !tbaa !12
  br label %lean_inc.exit751

bb.gd:                                            ; preds = %bb.gb
  %.not.i.i889 = icmp eq i32 %.val.i.i888, 0
  br i1 %.not.i.i889, label %lean_inc.exit751, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.jt = atomicrmw sub ptr %i.iu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit751

lean_inc.exit751:                                 ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.ga
  %i.ju = ptrtoint ptr %i.is to i64
  %i.jv = and i64 %i.ju, 1
  %.not.i748 = icmp eq i64 %i.jv, 0
  br i1 %.not.i748, label %bb.gf, label %lean_inc.exit749

bb.gf:                                            ; preds = %lean_inc.exit751
  %.val.i.i891 = load i32, ptr %i.is, align 4, !tbaa !12 ; 3 uses
  %i.jw = icmp sgt i32 %.val.i.i891, 0
  br i1 %i.jw, label %bb.gg, label %bb.gh, !prof !13

bb.gg:                                            ; preds = %bb.gf
  %i.jx = add nuw i32 %.val.i.i891, 1
  store i32 %i.jx, ptr %i.is, align 4, !tbaa !12
  br label %lean_inc.exit749

bb.gh:                                            ; preds = %bb.gf
  %.not.i.i892 = icmp eq i32 %.val.i.i891, 0
  br i1 %.not.i.i892, label %lean_inc.exit749, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.jy = atomicrmw sub ptr %i.is, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit749

lean_inc.exit749:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_inc.exit751
  %i.jz = tail call ptr @l_Lean_Expr_proj___override(ptr noundef %i.is, ptr noundef %i.iu, ptr noundef %i.jj) #4
  br label %lean_inc_ref.exit989

bb.gj:                                            ; preds = %lean_inc.exit753
  %i.ka = load i32, ptr %i.jj, align 4, !tbaa !12 ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.gk, label %bb.gl, !prof !13

bb.gk:                                            ; preds = %bb.gj
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %i.jj, align 4, !tbaa !12
  br label %lean_dec.exit684

bb.gl:                                            ; preds = %bb.gj
  %.not.i.i682 = icmp eq i32 %i.ka, 0
  br i1 %.not.i.i682, label %lean_dec.exit684, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jj) #4
  br label %lean_dec.exit684

lean_dec.exit684:                                 ; preds = %lean_inc.exit753.thread, %bb.gk, %bb.gl, %bb.gm
  %.val.i.i894 = load i32, ptr %0, align 8, !tbaa !12 ; 3 uses
  %i.kd = icmp sgt i32 %.val.i.i894, 0
  br i1 %i.kd, label %bb.gn, label %bb.go, !prof !13

bb.gn:                                            ; preds = %lean_dec.exit684
  %i.ke = add nuw i32 %.val.i.i894, 1
  store i32 %i.ke, ptr %0, align 8, !tbaa !12
  br label %lean_inc_ref.exit989

bb.go:                                            ; preds = %lean_dec.exit684
  %.not.i.i895 = icmp eq i32 %.val.i.i894, 0
  br i1 %.not.i.i895, label %lean_inc_ref.exit989, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.kf = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit989

bb.gq:                                            ; preds = %lean_obj_tag.exit884
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 3)
  br label %lean_dec_ref.exit633.thread

bb.gr:                                            ; preds = %lean_obj_tag.exit863
  br i1 %.not.i764, label %bb.gs, label %lean_dec.exit680

bb.gs:                                            ; preds = %bb.gr
  %i.kg = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 1
  br i1 %i.kh, label %bb.gt, label %bb.gu, !prof !13

bb.gt:                                            ; preds = %bb.gs
  %i.ki = add nsw i32 %i.kg, -1
  store i32 %i.ki, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit680

bb.gu:                                            ; preds = %bb.gs
  %.not.i.i678 = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i678, label %lean_dec.exit680, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit680

lean_dec.exit680:                                 ; preds = %bb.gt, %bb.gu, %bb.gv, %bb.gr
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !10 ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !10 ; 6 uses
  %.val.i.i897 = load i32, ptr %i.km, align 4, !tbaa !12 ; 3 uses
  %i.kn = icmp sgt i32 %.val.i.i897, 0
  br i1 %i.kn, label %bb.gw, label %bb.gx, !prof !13

bb.gw:                                            ; preds = %lean_dec.exit680
  %i.ko = add nuw i32 %.val.i.i897, 1
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !12
  br label %lean_inc_ref.exit899

bb.gx:                                            ; preds = %lean_dec.exit680
  %.not.i.i898 = icmp eq i32 %.val.i.i897, 0
  br i1 %.not.i.i898, label %lean_inc_ref.exit899, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.kp = atomicrmw sub ptr %i.km, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit899

lean_inc_ref.exit899:                             ; preds = %bb.gw, %bb.gx, %bb.gy
  %i.kq = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit(ptr noundef nonnull %i.km, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 6 uses
  %i.kr = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ks = and i64 %i.kr, 1
  %.not.i900 = icmp eq i64 %i.ks, 0
  br i1 %.not.i900, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %lean_inc_ref.exit899
  %i.kt = lshr i64 %i.kr, 1
  %i.ku = trunc i64 %i.kt to i32
  br label %lean_obj_tag.exit903

bb.ha:                                            ; preds = %lean_inc_ref.exit899
  %i.kv = getelementptr i8, ptr %i.kq, i64 4
  %.val.i902 = load i32, ptr %i.kv, align 4
  %i.kw = lshr i32 %.val.i902, 24
  br label %lean_obj_tag.exit903

lean_obj_tag.exit903:                             ; preds = %bb.gz, %bb.ha
  %.0.i901 = phi i32 [ %i.ku, %bb.gz ], [ %i.kw, %bb.ha ]
  %i.kx = icmp eq i32 %.0.i901, 0
  br i1 %i.kx, label %bb.hb, label %bb.hs

bb.hb:                                            ; preds = %lean_obj_tag.exit903
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !10 ; 10 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = and i64 %i.la, 1
  %.not.i746 = icmp eq i64 %i.lb, 0
  br i1 %.not.i746, label %bb.hc, label %lean_inc.exit747.thread

bb.hc:                                            ; preds = %bb.hb
  %.val.i.i904 = load i32, ptr %i.kz, align 4, !tbaa !12 ; 3 uses
  %i.lc = icmp sgt i32 %.val.i.i904, 0
  br i1 %i.lc, label %bb.hd, label %bb.he, !prof !13

bb.hd:                                            ; preds = %bb.hc
  %i.ld = add nuw i32 %.val.i.i904, 1
  store i32 %i.ld, ptr %i.kz, align 4, !tbaa !12
  br label %lean_inc.exit747

bb.he:                                            ; preds = %bb.hc
  %.not.i.i905 = icmp eq i32 %.val.i.i904, 0
  br i1 %.not.i.i905, label %lean_inc.exit747, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.le = atomicrmw sub ptr %i.kz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit747

lean_inc.exit747:                                 ; preds = %bb.hf, %bb.he, %bb.hd
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kq, i32 noundef 1)
  %.not1020 = icmp eq ptr %i.km, %i.kz
  br i1 %.not1020, label %bb.hl, label %bb.hg

lean_inc.exit747.thread:                          ; preds = %bb.hb
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kq, i32 noundef 1)
  %.not10201112 = icmp eq ptr %i.km, %i.kz
  br i1 %.not10201112, label %lean_dec.exit676, label %bb.hg

bb.hg:                                            ; preds = %lean_inc.exit747.thread, %lean_inc.exit747
  %i.lf = ptrtoint ptr %i.kk to i64
  %i.lg = and i64 %i.lf, 1
  %.not.i744 = icmp eq i64 %i.lg, 0
  br i1 %.not.i744, label %bb.hh, label %lean_inc.exit745

bb.hh:                                            ; preds = %bb.hg
  %.val.i.i907 = load i32, ptr %i.kk, align 4, !tbaa !12 ; 3 uses
  %i.lh = icmp sgt i32 %.val.i.i907, 0
  br i1 %i.lh, label %bb.hi, label %bb.hj, !prof !13

bb.hi:                                            ; preds = %bb.hh
  %i.li = add nuw i32 %.val.i.i907, 1
  store i32 %i.li, ptr %i.kk, align 4, !tbaa !12
  br label %lean_inc.exit745

bb.hj:                                            ; preds = %bb.hh
  %.not.i.i908 = icmp eq i32 %.val.i.i907, 0
  br i1 %.not.i.i908, label %lean_inc.exit745, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.lj = atomicrmw sub ptr %i.kk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit745

lean_inc.exit745:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %bb.hg
  %i.lk = tail call ptr @l_Lean_Expr_mdata___override(ptr noundef %i.kk, ptr noundef %i.kz) #4
  br label %lean_inc_ref.exit989

bb.hl:                                            ; preds = %lean_inc.exit747
  %i.ll = load i32, ptr %i.kz, align 4, !tbaa !12 ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 1
  br i1 %i.lm, label %bb.hm, label %bb.hn, !prof !13

bb.hm:                                            ; preds = %bb.hl
  %i.ln = add nsw i32 %i.ll, -1
  store i32 %i.ln, ptr %i.kz, align 4, !tbaa !12
  br label %lean_dec.exit676

bb.hn:                                            ; preds = %bb.hl
  %.not.i.i674 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i674, label %lean_dec.exit676, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kz) #4
  br label %lean_dec.exit676

lean_dec.exit676:                                 ; preds = %lean_inc.exit747.thread, %bb.hm, %bb.hn, %bb.ho
  %.val.i.i910 = load i32, ptr %0, align 8, !tbaa !12 ; 3 uses
  %i.lo = icmp sgt i32 %.val.i.i910, 0
  br i1 %i.lo, label %bb.hp, label %bb.hq, !prof !13

bb.hp:                                            ; preds = %lean_dec.exit676
  %i.lp = add nuw i32 %.val.i.i910, 1
  store i32 %i.lp, ptr %0, align 8, !tbaa !12
  br label %lean_inc_ref.exit989

bb.hq:                                            ; preds = %lean_dec.exit676
  %.not.i.i911 = icmp eq i32 %.val.i.i910, 0
  br i1 %.not.i.i911, label %lean_inc_ref.exit989, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.lq = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit989

bb.hs:                                            ; preds = %lean_obj_tag.exit903
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 2)
  br label %lean_dec_ref.exit633.thread

bb.ht:                                            ; preds = %lean_obj_tag.exit863
  br i1 %.not.i764, label %bb.hu, label %lean_dec.exit672

bb.hu:                                            ; preds = %bb.ht
  %i.lr = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.ls = icmp sgt i32 %i.lr, 1
  br i1 %i.ls, label %bb.hv, label %bb.hw, !prof !13

bb.hv:                                            ; preds = %bb.hu
  %i.lt = add nsw i32 %i.lr, -1
  store i32 %i.lt, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit672

bb.hw:                                            ; preds = %bb.hu
  %.not.i.i670 = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i670, label %lean_dec.exit672, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit672

lean_dec.exit672:                                 ; preds = %bb.hv, %bb.hw, %bb.hx, %bb.ht
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !10 ; 14 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !10 ; 13 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !10 ; 20 uses
  %i.ma = getelementptr i8, ptr %0, i64 40
  %.val777 = load i8, ptr %i.ma, align 8, !tbaa !23 ; 4 uses
  %.val.i.i913 = load i32, ptr %i.lx, align 4, !tbaa !12 ; 3 uses
  %i.mb = icmp sgt i32 %.val.i.i913, 0
  br i1 %i.mb, label %bb.hy, label %bb.hz, !prof !13

bb.hy:                                            ; preds = %lean_dec.exit672
  %i.mc = add nuw i32 %.val.i.i913, 1
  store i32 %i.mc, ptr %i.lx, align 4, !tbaa !12
  br label %lean_inc_ref.exit915

bb.hz:                                            ; preds = %lean_dec.exit672
  %.not.i.i914 = icmp eq i32 %.val.i.i913, 0
  br i1 %.not.i.i914, label %lean_inc_ref.exit915, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.md = atomicrmw sub ptr %i.lx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit915

lean_inc_ref.exit915:                             ; preds = %bb.hy, %bb.hz, %bb.ia
  %i.me = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit(ptr noundef nonnull %i.lx, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 5 uses
  %i.mf = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.mg = and i64 %i.mf, 1
  %.not.i916 = icmp eq i64 %i.mg, 0
  br i1 %.not.i916, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %lean_inc_ref.exit915
  %i.mh = lshr i64 %i.mf, 1
  %i.mi = trunc i64 %i.mh to i32
  br label %lean_obj_tag.exit919

bb.ic:                                            ; preds = %lean_inc_ref.exit915
  %i.mj = getelementptr i8, ptr %i.me, i64 4
  %.val.i918 = load i32, ptr %i.mj, align 4
  %i.mk = lshr i32 %.val.i918, 24
  br label %lean_obj_tag.exit919

lean_obj_tag.exit919:                             ; preds = %bb.ib, %bb.ic
  %.0.i917 = phi i32 [ %i.mi, %bb.ib ], [ %i.mk, %bb.ic ]
  %i.ml = icmp eq i32 %.0.i917, 0
  br i1 %i.ml, label %bb.id, label %bb.jr

bb.id:                                            ; preds = %lean_obj_tag.exit919
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !10 ; 13 uses
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = and i64 %i.mo, 1
  %.not.i742 = icmp eq i64 %i.mp, 0               ; 2 uses
  br i1 %.not.i742, label %bb.ie, label %lean_inc.exit743

bb.ie:                                            ; preds = %bb.id
  %.val.i.i920 = load i32, ptr %i.mn, align 4, !tbaa !12 ; 3 uses
  %i.mq = icmp sgt i32 %.val.i.i920, 0
  br i1 %i.mq, label %bb.if, label %bb.ig, !prof !13

bb.if:                                            ; preds = %bb.ie
  %i.mr = add nuw i32 %.val.i.i920, 1
  store i32 %i.mr, ptr %i.mn, align 4, !tbaa !12
  br label %lean_inc.exit743

bb.ig:                                            ; preds = %bb.ie
  %.not.i.i921 = icmp eq i32 %.val.i.i920, 0
  br i1 %.not.i.i921, label %lean_inc.exit743, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.ms = atomicrmw sub ptr %i.mn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit743

lean_inc.exit743:                                 ; preds = %bb.ih, %bb.ig, %bb.if, %bb.id
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.me, i32 noundef 1)
  %i.mt = tail call zeroext i8 @l_Lean_Expr_hasLooseBVars(ptr noundef %i.lz) #4
  %i.mu = icmp eq i8 %i.mt, 0
  br i1 %i.mu, label %bb.ii, label %bb.jh

bb.ii:                                            ; preds = %lean_inc.exit743
  %.val.i.i923 = load i32, ptr %i.lz, align 4, !tbaa !12 ; 3 uses
  %i.mv = icmp sgt i32 %.val.i.i923, 0
  br i1 %i.mv, label %bb.ij, label %bb.ik, !prof !13

bb.ij:                                            ; preds = %bb.ii
  %i.mw = add nuw i32 %.val.i.i923, 1
  store i32 %i.mw, ptr %i.lz, align 4, !tbaa !12
  br label %lean_inc_ref.exit925

bb.ik:                                            ; preds = %bb.ii
  %.not.i.i924 = icmp eq i32 %.val.i.i923, 0
  br i1 %.not.i.i924, label %lean_inc_ref.exit925, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.mx = atomicrmw sub ptr %i.lz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit925

lean_inc_ref.exit925:                             ; preds = %bb.ij, %bb.ik, %bb.il
  %i.my = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit(ptr noundef nonnull %i.lz, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 5 uses
  %i.mz = ptrtoint ptr %i.my to i64               ; 2 uses
  %i.na = and i64 %i.mz, 1
  %.not.i926 = icmp eq i64 %i.na, 0
  br i1 %.not.i926, label %bb.in, label %bb.im

bb.im:                                            ; preds = %lean_inc_ref.exit925
  %i.nb = lshr i64 %i.mz, 1
  %i.nc = trunc i64 %i.nb to i32
  br label %lean_obj_tag.exit929

bb.in:                                            ; preds = %lean_inc_ref.exit925
  %i.nd = getelementptr i8, ptr %i.my, i64 4
  %.val.i928 = load i32, ptr %i.nd, align 4
  %i.ne = lshr i32 %.val.i928, 24
  br label %lean_obj_tag.exit929

lean_obj_tag.exit929:                             ; preds = %bb.im, %bb.in
  %.0.i927 = phi i32 [ %i.nc, %bb.im ], [ %i.ne, %bb.in ]
  %i.nf = icmp eq i32 %.0.i927, 0
  br i1 %i.nf, label %bb.io, label %bb.jc

bb.io:                                            ; preds = %lean_obj_tag.exit929
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !10 ; 7 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = and i64 %i.ni, 1
  %.not.i740 = icmp eq i64 %i.nj, 0
  br i1 %.not.i740, label %bb.ip, label %lean_inc.exit741

bb.ip:                                            ; preds = %bb.io
  %.val.i.i930 = load i32, ptr %i.nh, align 4, !tbaa !12 ; 3 uses
  %i.nk = icmp sgt i32 %.val.i.i930, 0
  br i1 %i.nk, label %bb.iq, label %bb.ir, !prof !13

bb.iq:                                            ; preds = %bb.ip
  %i.nl = add nuw i32 %.val.i.i930, 1
  store i32 %i.nl, ptr %i.nh, align 4, !tbaa !12
  br label %lean_inc.exit741

bb.ir:                                            ; preds = %bb.ip
  %.not.i.i931 = icmp eq i32 %.val.i.i930, 0
  br i1 %.not.i.i931, label %lean_inc.exit741, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.nm = atomicrmw sub ptr %i.nh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit741

lean_inc.exit741:                                 ; preds = %bb.is, %bb.ir, %bb.iq, %bb.io
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.my, i32 noundef 1)
  %i.nn = ptrtoint ptr %i.lv to i64
  %i.no = and i64 %i.nn, 1
  %.not.i738 = icmp eq i64 %i.no, 0
  br i1 %.not.i738, label %bb.it, label %lean_inc.exit739

bb.it:                                            ; preds = %lean_inc.exit741
  %.val.i.i933 = load i32, ptr %i.lv, align 4, !tbaa !12 ; 3 uses
  %i.np = icmp sgt i32 %.val.i.i933, 0
  br i1 %i.np, label %bb.iu, label %bb.iv, !prof !13

bb.iu:                                            ; preds = %bb.it
  %i.nq = add nuw i32 %.val.i.i933, 1
  store i32 %i.nq, ptr %i.lv, align 4, !tbaa !12
  br label %lean_inc.exit739

bb.iv:                                            ; preds = %bb.it
  %.not.i.i934 = icmp eq i32 %.val.i.i933, 0
  br i1 %.not.i.i934, label %lean_inc.exit739, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.nr = atomicrmw sub ptr %i.lv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit739

lean_inc.exit739:                                 ; preds = %bb.iw, %bb.iv, %bb.iu, %lean_inc.exit741
  %.val.i.i936 = load i32, ptr %i.lz, align 4, !tbaa !12 ; 3 uses
  %i.ns = icmp sgt i32 %.val.i.i936, 0
  br i1 %i.ns, label %bb.ix, label %bb.iy, !prof !13

bb.ix:                                            ; preds = %lean_inc.exit739
  %i.nt = add nuw i32 %.val.i.i936, 1
  store i32 %i.nt, ptr %i.lz, align 4, !tbaa !12
  br label %lean_inc_ref.exit938

bb.iy:                                            ; preds = %lean_inc.exit739
  %.not.i.i937 = icmp eq i32 %.val.i.i936, 0
  br i1 %.not.i.i937, label %lean_inc_ref.exit938, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.nu = atomicrmw sub ptr %i.lz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit938

lean_inc_ref.exit938:                             ; preds = %bb.ix, %bb.iy, %bb.iz
  %.val.i.i939 = load i32, ptr %i.lx, align 4, !tbaa !12 ; 3 uses
  %i.nv = icmp sgt i32 %.val.i.i939, 0
  br i1 %i.nv, label %bb.ja, label %bb.jb, !prof !13

bb.ja:                                            ; preds = %lean_inc_ref.exit938
  %i.nw = add nuw i32 %.val.i.i939, 1             ; 2 uses
  store i32 %i.nw, ptr %i.lx, align 4, !tbaa !12
  br label %lean_dec_ref.exit633

bb.jb:                                            ; preds = %lean_inc_ref.exit938
  %.not.i.i940 = icmp eq i32 %.val.i.i939, 0
  br i1 %.not.i.i940, label %lean_dec_ref.exit617, label %lean_dec_ref.exit633thread-pre-split

bb.jc:                                            ; preds = %lean_obj_tag.exit929
  br i1 %.not.i742, label %bb.jd, label %lean_dec.exit668

bb.jd:                                            ; preds = %bb.jc
  %i.nx = load i32, ptr %i.mn, align 4, !tbaa !12 ; 3 uses
  %i.ny = icmp sgt i32 %i.nx, 1
  br i1 %i.ny, label %bb.je, label %bb.jf, !prof !13

bb.je:                                            ; preds = %bb.jd
  %i.nz = add nsw i32 %i.nx, -1
  store i32 %i.nz, ptr %i.mn, align 4, !tbaa !12
  br label %lean_dec.exit668

bb.jf:                                            ; preds = %bb.jd
  %.not.i.i666 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i666, label %lean_dec.exit668, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mn) #4
  br label %lean_dec.exit668

lean_dec.exit668:                                 ; preds = %bb.je, %bb.jf, %bb.jg, %bb.jc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 3)
  br label %lean_dec_ref.exit633.thread

bb.jh:                                            ; preds = %lean_inc.exit743
  %i.oa = ptrtoint ptr %i.lv to i64
  %i.ob = and i64 %i.oa, 1
  %.not.i736 = icmp eq i64 %i.ob, 0
  br i1 %.not.i736, label %bb.ji, label %lean_inc.exit737

bb.ji:                                            ; preds = %bb.jh
  %.val.i.i942 = load i32, ptr %i.lv, align 4, !tbaa !12 ; 3 uses
  %i.oc = icmp sgt i32 %.val.i.i942, 0
  br i1 %i.oc, label %bb.jj, label %bb.jk, !prof !13

bb.jj:                                            ; preds = %bb.ji
  %i.od = add nuw i32 %.val.i.i942, 1
  store i32 %i.od, ptr %i.lv, align 4, !tbaa !12
  br label %lean_inc.exit737

bb.jk:                                            ; preds = %bb.ji
  %.not.i.i943 = icmp eq i32 %.val.i.i942, 0
  br i1 %.not.i.i943, label %lean_inc.exit737, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.oe = atomicrmw sub ptr %i.lv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit737

lean_inc.exit737:                                 ; preds = %bb.jl, %bb.jk, %bb.jj, %bb.jh
  %.val.i945 = load i32, ptr %i.lz, align 4, !tbaa !12 ; 3 uses
  %i.of = icmp sgt i32 %.val.i945, 0
  br i1 %i.of, label %bb.jm, label %bb.jn, !prof !13

bb.jm:                                            ; preds = %lean_inc.exit737
  %i.og = add nuw i32 %.val.i945, 2
  store i32 %i.og, ptr %i.lz, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit947

bb.jn:                                            ; preds = %lean_inc.exit737
  %.not.i946 = icmp eq i32 %.val.i945, 0
  br i1 %.not.i946, label %lean_inc_ref_n.exit947, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.oh = atomicrmw sub ptr %i.lz, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit947

lean_inc_ref_n.exit947:                           ; preds = %bb.jm, %bb.jn, %bb.jo
  %.val.i.i948 = load i32, ptr %i.lx, align 4, !tbaa !12 ; 3 uses
  %i.oi = icmp sgt i32 %.val.i.i948, 0
  br i1 %i.oi, label %bb.jp, label %bb.jq, !prof !13

bb.jp:                                            ; preds = %lean_inc_ref_n.exit947
  %i.oj = add nuw i32 %.val.i.i948, 1             ; 2 uses
  store i32 %i.oj, ptr %i.lx, align 4, !tbaa !12
  br label %lean_dec_ref.exit633

bb.jq:                                            ; preds = %lean_inc_ref_n.exit947
  %.not.i.i949 = icmp eq i32 %.val.i.i948, 0
  br i1 %.not.i.i949, label %lean_dec_ref.exit617, label %lean_dec_ref.exit633thread-pre-split

bb.jr:                                            ; preds = %lean_obj_tag.exit919
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 3)
  br label %lean_dec_ref.exit633.thread

bb.js:                                            ; preds = %lean_obj_tag.exit863
  br i1 %.not.i764, label %bb.jt, label %lean_dec.exit664

bb.jt:                                            ; preds = %bb.js
  %i.ok = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.ol = icmp sgt i32 %i.ok, 1
  br i1 %i.ol, label %bb.ju, label %bb.jv, !prof !13

bb.ju:                                            ; preds = %bb.jt
  %i.om = add nsw i32 %i.ok, -1
  store i32 %i.om, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit664

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i662 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i662, label %lean_dec.exit664, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit664

lean_dec.exit664:                                 ; preds = %bb.ju, %bb.jv, %bb.jw, %bb.js
  %i.on = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__4_once seq_cst, align 4, !tbaa !16
  %i.oo = icmp eq i32 %i.on, 1
  br i1 %i.oo, label %bb.jx, label %bb.jy, !prof !13

bb.jx:                                            ; preds = %lean_dec.exit664
  %i.op = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit952

bb.jy:                                            ; preds = %lean_dec.exit664
  %i.oq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__4, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__4_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__4) #4
  br label %lean_obj_once.exit952

lean_obj_once.exit952:                            ; preds = %bb.jx, %bb.jy
  %.0.i951 = phi ptr [ %i.op, %bb.jx ], [ %i.oq, %bb.jy ]
  %i.or = tail call ptr @l_panic___at___00__private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit_spec__4(ptr noundef %.0.i951, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 7 uses
  %i.os = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.ot = and i64 %i.os, 1
  %.not.i953 = icmp eq i64 %i.ot, 0
  br i1 %.not.i953, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %lean_obj_once.exit952
  %i.ou = lshr i64 %i.os, 1
  %i.ov = trunc i64 %i.ou to i32
  br label %lean_obj_tag.exit956

bb.ka:                                            ; preds = %lean_obj_once.exit952
  %i.ow = getelementptr i8, ptr %i.or, i64 4
  %.val.i955 = load i32, ptr %i.ow, align 4
  %i.ox = lshr i32 %.val.i955, 24
  br label %lean_obj_tag.exit956

lean_obj_tag.exit956:                             ; preds = %bb.jz, %bb.ka
  %.0.i954 = phi i32 [ %i.ov, %bb.jz ], [ %i.ox, %bb.ka ]
  %i.oy = icmp eq i32 %.0.i954, 0
  br i1 %i.oy, label %bb.kb, label %bb.kg

bb.kb:                                            ; preds = %lean_obj_tag.exit956
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !10 ; 5 uses
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = and i64 %i.pb, 1
  %.not.i734 = icmp eq i64 %i.pc, 0
  br i1 %.not.i734, label %bb.kc, label %lean_inc.exit735

bb.kc:                                            ; preds = %bb.kb
  %.val.i.i957 = load i32, ptr %i.pa, align 4, !tbaa !12 ; 3 uses
  %i.pd = icmp sgt i32 %.val.i.i957, 0
  br i1 %i.pd, label %bb.kd, label %bb.ke, !prof !13

bb.kd:                                            ; preds = %bb.kc
  %i.pe = add nuw i32 %.val.i.i957, 1
  store i32 %i.pe, ptr %i.pa, align 4, !tbaa !12
  br label %lean_inc.exit735

bb.ke:                                            ; preds = %bb.kc
  %.not.i.i958 = icmp eq i32 %.val.i.i957, 0
  br i1 %.not.i.i958, label %lean_inc.exit735, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.pf = atomicrmw sub ptr %i.pa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit735

lean_inc.exit735:                                 ; preds = %bb.kf, %bb.ke, %bb.kd, %bb.kb
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.or, i32 noundef 1)
  br label %lean_inc_ref.exit989

bb.kg:                                            ; preds = %lean_obj_tag.exit956
  %i.pg = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ph = icmp sgt i32 %i.pg, 1
  br i1 %i.ph, label %bb.kh, label %bb.ki, !prof !13

bb.kh:                                            ; preds = %bb.kg
  %i.pi = add nsw i32 %i.pg, -1
  store i32 %i.pi, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit633.thread

bb.ki:                                            ; preds = %bb.kg
  %.not.i630 = icmp eq i32 %i.pg, 0
  br i1 %.not.i630, label %lean_dec_ref.exit633.thread, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit633.thread

bb.kk:                                            ; preds = %lean_obj_tag.exit826
  br i1 %.not.i764, label %bb.kl, label %lean_dec.exit660

bb.kl:                                            ; preds = %bb.kk
  %i.pj = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.pk = icmp sgt i32 %i.pj, 1
  br i1 %i.pk, label %bb.km, label %bb.kn, !prof !13

bb.km:                                            ; preds = %bb.kl
  %i.pl = add nsw i32 %i.pj, -1
  store i32 %i.pl, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit660

bb.kn:                                            ; preds = %bb.kl
  %.not.i.i658 = icmp eq i32 %i.pj, 0
  br i1 %.not.i.i658, label %lean_dec.exit660, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit660

lean_dec.exit660:                                 ; preds = %bb.km, %bb.kn, %bb.ko, %bb.kk
  %i.pm = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, 1
  br i1 %i.pn, label %bb.kp, label %bb.kq, !prof !13

bb.kp:                                            ; preds = %lean_dec.exit660
  %i.po = add nsw i32 %i.pm, -1
  store i32 %i.po, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit629

bb.kq:                                            ; preds = %lean_dec.exit660
  %.not.i628 = icmp eq i32 %i.pm, 0
  br i1 %.not.i628, label %lean_dec_ref.exit629, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit629

lean_dec_ref.exit629:                             ; preds = %bb.kp, %bb.kq, %bb.kr
  %i.pp = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !10 ; 5 uses
  %.val773 = load i32, ptr %i.de, align 8, !tbaa !12
  %i.pr = icmp eq i32 %.val773, 1
  br i1 %i.pr, label %lean_dec_ref.exit633.thread, label %bb.ks

bb.ks:                                            ; preds = %lean_dec_ref.exit629
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = and i64 %i.ps, 1
  %.not.i732 = icmp eq i64 %i.pt, 0
  br i1 %.not.i732, label %bb.kt, label %lean_inc.exit733

bb.kt:                                            ; preds = %bb.ks
  %.val.i.i960 = load i32, ptr %i.pq, align 4, !tbaa !12 ; 3 uses
  %i.pu = icmp sgt i32 %.val.i.i960, 0
  br i1 %i.pu, label %bb.ku, label %bb.kv, !prof !13

bb.ku:                                            ; preds = %bb.kt
  %i.pv = add nuw i32 %.val.i.i960, 1
  store i32 %i.pv, ptr %i.pq, align 4, !tbaa !12
  br label %lean_inc.exit733

bb.kv:                                            ; preds = %bb.kt
  %.not.i.i961 = icmp eq i32 %.val.i.i960, 0
  br i1 %.not.i.i961, label %lean_inc.exit733, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.pw = atomicrmw sub ptr %i.pq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit733

lean_inc.exit733:                                 ; preds = %bb.kw, %bb.kv, %bb.ku, %bb.ks
  br i1 %.not.i823, label %bb.kx, label %bb.lb

bb.kx:                                            ; preds = %lean_inc.exit733
  %i.px = load i32, ptr %i.de, align 8, !tbaa !12 ; 3 uses
  %i.py = icmp sgt i32 %i.px, 1
  br i1 %i.py, label %bb.ky, label %bb.kz, !prof !13

bb.ky:                                            ; preds = %bb.kx
  %i.pz = add nsw i32 %i.px, -1
  store i32 %i.pz, ptr %i.de, align 8, !tbaa !12
  br label %bb.lb

bb.kz:                                            ; preds = %bb.kx
  %.not.i.i654 = icmp eq i32 %i.px, 0
  br i1 %.not.i.i654, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.de) #4
  br label %bb.lb

bb.lb:                                            ; preds = %lean_inc.exit733, %bb.la, %bb.kz, %bb.ky
  %i.qa = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store ptr %i.pq, ptr %i.qb, align 8, !tbaa !10
  br label %lean_dec_ref.exit633.thread

bb.lc:                                            ; preds = %lean_dec_ref_known.exit822
  br i1 %.not.i764, label %bb.ld, label %lean_dec.exit652

bb.ld:                                            ; preds = %bb.lc
  %i.qc = load i32, ptr %i.cn, align 4, !tbaa !12 ; 3 uses
  %i.qd = icmp sgt i32 %i.qc, 1
  br i1 %i.qd, label %bb.le, label %bb.lf, !prof !13

bb.le:                                            ; preds = %bb.ld
  %i.qe = add nsw i32 %i.qc, -1
  store i32 %i.qe, ptr %i.cn, align 4, !tbaa !12
  br label %lean_dec.exit652

bb.lf:                                            ; preds = %bb.ld
  %.not.i.i650 = icmp eq i32 %i.qc, 0
  br i1 %.not.i.i650, label %lean_dec.exit652, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #4
  br label %lean_dec.exit652

lean_dec.exit652:                                 ; preds = %bb.le, %bb.lf, %bb.lg, %bb.lc
  %i.qf = tail call ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_preprocess(ptr noundef %i.bp, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 11 uses
  %i.qg = ptrtoint ptr %i.qf to i64               ; 2 uses
  %i.qh = and i64 %i.qg, 1
  %.not.i963 = icmp eq i64 %i.qh, 0               ; 2 uses
  br i1 %.not.i963, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %lean_dec.exit652
  %i.qi = lshr i64 %i.qg, 1
  %i.qj = trunc i64 %i.qi to i32
  br label %lean_obj_tag.exit966

bb.li:                                            ; preds = %lean_dec.exit652
  %i.qk = getelementptr i8, ptr %i.qf, i64 4
  %.val.i965 = load i32, ptr %i.qk, align 4
  %i.ql = lshr i32 %.val.i965, 24
  br label %lean_obj_tag.exit966

lean_obj_tag.exit966:                             ; preds = %bb.lh, %bb.li
  %.0.i964 = phi i32 [ %i.qj, %bb.lh ], [ %i.ql, %bb.li ]
  %i.qm = icmp eq i32 %.0.i964, 0
  br i1 %i.qm, label %bb.lj, label %bb.md

bb.lj:                                            ; preds = %lean_obj_tag.exit966
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !10 ; 5 uses
  %.val772 = load i32, ptr %i.qf, align 8, !tbaa !12
  %i.qp = icmp eq i32 %.val772, 1                 ; 2 uses
  br i1 %i.qp, label %lean_dec.exit648, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = and i64 %i.qq, 1
  %.not.i730 = icmp eq i64 %i.qr, 0
  br i1 %.not.i730, label %bb.ll, label %lean_inc.exit731

bb.ll:                                            ; preds = %bb.lk
  %.val.i.i967 = load i32, ptr %i.qo, align 4, !tbaa !12 ; 3 uses
  %i.qs = icmp sgt i32 %.val.i.i967, 0
  br i1 %i.qs, label %bb.lm, label %bb.ln, !prof !13

bb.lm:                                            ; preds = %bb.ll
  %i.qt = add nuw i32 %.val.i.i967, 1
  store i32 %i.qt, ptr %i.qo, align 4, !tbaa !12
  br label %lean_inc.exit731

bb.ln:                                            ; preds = %bb.ll
  %.not.i.i968 = icmp eq i32 %.val.i.i967, 0
  br i1 %.not.i.i968, label %lean_inc.exit731, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.qu = atomicrmw sub ptr %i.qo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit731

lean_inc.exit731:                                 ; preds = %bb.lo, %bb.ln, %bb.lm, %bb.lk
  br i1 %.not.i963, label %bb.lp, label %lean_dec.exit648

bb.lp:                                            ; preds = %lean_inc.exit731
  %i.qv = load i32, ptr %i.qf, align 8, !tbaa !12 ; 3 uses
  %i.qw = icmp sgt i32 %i.qv, 1
  br i1 %i.qw, label %bb.lq, label %bb.lr, !prof !13

bb.lq:                                            ; preds = %bb.lp
  %i.qx = add nsw i32 %i.qv, -1
  store i32 %i.qx, ptr %i.qf, align 8, !tbaa !12
  br label %lean_dec.exit648

bb.lr:                                            ; preds = %bb.lp
  %.not.i.i646 = icmp eq i32 %i.qv, 0
  br i1 %.not.i.i646, label %lean_dec.exit648, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qf) #4
  br label %lean_dec.exit648

lean_dec.exit648:                                 ; preds = %lean_inc.exit731, %bb.ls, %bb.lr, %bb.lq, %bb.lj
  %.0538 = phi ptr [ %i.qf, %bb.lj ], [ inttoptr (i64 1 to ptr), %bb.lq ], [ inttoptr (i64 1 to ptr), %bb.lr ], [ inttoptr (i64 1 to ptr), %bb.ls ], [ inttoptr (i64 1 to ptr), %lean_inc.exit731 ] ; 2 uses
  %i.qy = tail call ptr @lean_st_ref_take(ptr noundef %1) #4
  %i.qz = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__6_once seq_cst, align 4, !tbaa !16
  %i.ra = icmp eq i32 %i.qz, 1
  br i1 %i.ra, label %bb.lt, label %bb.lu, !prof !13

bb.lt:                                            ; preds = %lean_dec.exit648
  %i.rb = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit971

bb.lu:                                            ; preds = %lean_dec.exit648
  %i.rc = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__6, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__6_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_MarkNestedSubsingletons_0__Lean_Meta_Grind_markNestedSubsingletons_visit___closed__6) #4
  br label %lean_obj_once.exit971

lean_obj_once.exit971:                            ; preds = %bb.lt, %bb.lu
  %.0.i970 = phi ptr [ %i.rb, %bb.lt ], [ %i.rc, %bb.lu ]
  %.val.i.i972 = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
end_hunk_0
