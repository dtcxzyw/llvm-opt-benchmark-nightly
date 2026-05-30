inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_verify_internal_consistency:bb.a
  br label %RVALUE_BLACK_P.exit.thread.i.i.i

RVALUE_BLACK_P.exit.thread.i.i.i:                 ; preds = %obj_type_name.exit111.i.i.i, %RB_FL_TEST.exit.i.i.i, %rb_gc_impl_garbage_object_p.exit.thread114.i.i.i, %rb_objspace_reachable_objects_from.exit93.i.i.i, %RVALUE_BLACK_P.exit.i.i.i, %bb.ad, %bb.ac, %.preheader.i.i.i, %.preheader.i.i.i
  %i.gw = add i64 %.055123.i.i.i, %i.as           ; 2 uses
  %.not.i50.i.i = icmp eq i64 %i.gw, %i.au
  br i1 %.not.i50.i.i, label %verify_internal_consistency_i.exit.loopexit.i.i, label %.preheader.i.i.i, !llvm.loop !138

verify_internal_consistency_i.exit.loopexit.i.i:  ; preds = %RVALUE_BLACK_P.exit.thread.i.i.i
  %.pre.i6.i = load ptr, ptr %i.t, align 8, !tbaa !80
  br label %verify_internal_consistency_i.exit.i.i

verify_internal_consistency_i.exit.i.i:           ; preds = %verify_internal_consistency_i.exit.loopexit.i.i, %bb.c
  %i.gx = phi ptr [ %.pre.i6.i, %verify_internal_consistency_i.exit.loopexit.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.gy = add i64 %.03797.i.i, 1
  %.not.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i, label %.critedge.i.i, label %rb_darray_size.exit.i.i, !llvm.loop !140

bb.bm:                                            ; preds = %.critedge.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.65) #61
  unreachable

.critedge.thread.i.i:                             ; preds = %.critedge.thread.i.i.preheader, %gc_verify_heap_pages_.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %gc_verify_heap_pages_.exit.i.i.i ], [ 0, %.critedge.thread.i.i.preheader ] ; 2 uses
  %i.gz = getelementptr [152 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 128    ; 3 uses
  %.pn69.i.i.i.i = load ptr, ptr %i.ha, align 8, !tbaa !141 ; 2 uses
  %.not71.i.i.i.i = icmp eq ptr %.pn69.i.i.i.i, %i.ha
  br i1 %.not71.i.i.i.i, label %gc_verify_heap_pages_.exit.i.i.i, label %.lr.ph76.i.i.i.i

.lr.ph76.i.i.i.i:                                 ; preds = %.critedge.thread.i.i, %gc_verify_heap_page.exit.i.i.i.i
  %.pn73.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %gc_verify_heap_page.exit.i.i.i.i ], [ %.pn69.i.i.i.i, %.critedge.thread.i.i ] ; 10 uses
  %.01774.i.i.i.i = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -56 ; 4 uses
  %i.hb = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -8
  %.01864.i.i.i.i = load ptr, ptr %i.hb, align 8, !tbaa !142 ; 2 uses
  %.not1965.i.i.i.i = icmp eq ptr %.01864.i.i.i.i, null
  br i1 %.not1965.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph76.i.i.i.i, %bb.cf
  %.01866.i.i.i.i = phi ptr [ %.018.i.i.i.i, %bb.cf ], [ %.01864.i.i.i.i, %.lr.ph76.i.i.i.i ] ; 3 uses
  %i.hc = load i64, ptr %.01866.i.i.i.i, align 8, !tbaa !109 ; 2 uses
  %i.hd = trunc i64 %i.hc to i32
  %i.he = and i32 %i.hd, 31                       ; 2 uses
  %.not20.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not20.i.i.i.i, label %bb.cf, label %rb_type.exit.i.i.i.i.i

rb_type.exit.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !128
  switch i32 %i.he, label %bb.ce [
    i32 12, label %bb.cd
    i32 1, label %obj_type_name.exit.i.i.i.i
    i32 2, label %bb.bn
    i32 3, label %bb.bo
    i32 4, label %rb_type.exit.thread.i.i.i.i.i
    i32 5, label %bb.bp
    i32 6, label %bb.bq
    i32 7, label %bb.br
    i32 8, label %bb.bs
    i32 9, label %bb.bt
    i32 10, label %bb.bu
    i32 11, label %bb.bv
    i32 13, label %bb.bw
    i32 14, label %bb.bx
    i32 15, label %bb.by
    i32 17, label %rb_type.exit.thread5.i.i.i.i.i
    i32 18, label %rb_type.exit.thread7.i.i.i.i.i
    i32 19, label %rb_type.exit.thread9.i.i.i.i.i
    i32 20, label %rb_type.exit.thread11.i.i.i.i.i
    i32 21, label %rb_type.exit.thread13.i.i.i.i.i
    i32 22, label %rb_type.exit.thread15.i.i.i.i.i
    i32 26, label %bb.bz
    i32 28, label %bb.ca
    i32 30, label %bb.cb
    i32 29, label %bb.cc
  ]

bb.bn:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bo:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread.i.i.i.i.i:                    ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bp:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bq:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.br:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bs:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bt:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bu:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bv:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bw:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bx:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.by:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread5.i.i.i.i.i:                   ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread7.i.i.i.i.i:                   ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread9.i.i.i.i.i:                   ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread11.i.i.i.i.i:                  ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread13.i.i.i.i.i:                  ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread15.i.i.i.i.i:                  ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.bz:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.ca:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.cb:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.cc:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

bb.cd:                                            ; preds = %rb_type.exit.i.i.i.i.i
  %i.hg = and i64 %i.hc, 64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %obj_type_name.exit.i.i.i.i, label %rb_objspace_data_type_name.exit.i.i.i.i.i.i

rb_objspace_data_type_name.exit.i.i.i.i.i.i:      ; preds = %bb.cd
  %i.hh = getelementptr i8, ptr %.01866.i.i.i.i, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !131
  %i.hj = and i64 %i.hi, -2
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !133 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  %spec.select.i2.i.i.i.i.i = select i1 %.not5.i.i.i.i.i.i, ptr @.str.303, ptr %i.hl
  br label %obj_type_name.exit.i.i.i.i

bb.ce:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

obj_type_name.exit.i.i.i.i:                       ; preds = %bb.ce, %rb_objspace_data_type_name.exit.i.i.i.i.i.i, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %rb_type.exit.thread15.i.i.i.i.i, %rb_type.exit.thread13.i.i.i.i.i, %rb_type.exit.thread11.i.i.i.i.i, %rb_type.exit.thread9.i.i.i.i.i, %rb_type.exit.thread7.i.i.i.i.i, %rb_type.exit.thread5.i.i.i.i.i, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %rb_type.exit.thread.i.i.i.i.i, %bb.bo, %bb.bn, %rb_type.exit.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi ptr [ @.str.304, %bb.ce ], [ %spec.select.i2.i.i.i.i.i, %rb_objspace_data_type_name.exit.i.i.i.i.i.i ], [ @.str.303, %bb.cd ], [ @.str.280, %bb.bn ], [ @.str.281, %bb.bo ], [ @.str.282, %rb_type.exit.thread.i.i.i.i.i ], [ @.str.283, %bb.bp ], [ @.str.284, %bb.bq ], [ @.str.285, %bb.br ], [ @.str.286, %bb.bs ], [ @.str.287, %bb.bt ], [ @.str.288, %bb.bu ], [ @.str.289, %bb.bv ], [ @.str.290, %bb.bw ], [ @.str.291, %bb.bx ], [ @.str.292, %bb.by ], [ @.str.293, %rb_type.exit.thread5.i.i.i.i.i ], [ @.str.294, %rb_type.exit.thread7.i.i.i.i.i ], [ @.str.295, %rb_type.exit.thread9.i.i.i.i.i ], [ @.str.296, %rb_type.exit.thread11.i.i.i.i.i ], [ @.str.297, %rb_type.exit.thread13.i.i.i.i.i ], [ @.str.298, %rb_type.exit.thread15.i.i.i.i.i ], [ @.str.299, %bb.bz ], [ @.str.300, %bb.ca ], [ @.str.301, %bb.cb ], [ @.str.302, %bb.cc ], [ @.str.279, %rb_type.exit.i.i.i.i.i ]
  %i.hm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hf, i32 noundef 1, ptr noundef nonnull @.str.93, ptr noundef nonnull %.0.i3.i.i.i.i.i) #46 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %obj_type_name.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.hn = getelementptr i8, ptr %.01866.i.i.i.i, i64 8
  %.018.i.i.i.i = load ptr, ptr %i.hn, align 8, !tbaa !142 ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %.018.i.i.i.i, null
  br i1 %.not19.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !143

._crit_edge.i.i.i.i:                              ; preds = %bb.cf, %.lr.ph76.i.i.i.i
  %i.ho = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -44
  %i.hp = load i8, ptr %i.ho, align 4             ; 2 uses
  %i.hq = and i8 %i.hp, 2
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.cg, label %gc_verify_heap_page.exit.i.i.i.i

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hs = load i16, ptr %.01774.i.i.i.i, align 8, !tbaa !100
  %i.ht = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !107 ; 4 uses
  %i.hv = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -54
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !108
  %i.hx = zext i16 %i.hw to i64
  %i.hy = sext i16 %i.hs to i64                   ; 3 uses
  %i.hz = mul nsw i64 %i.hx, %i.hy
  %i.ia = add i64 %i.hz, %i.hu                    ; 3 uses
  %i.ib = icmp ult i64 %i.hu, %i.ia
  br i1 %i.ib, label %.preheader93.lr.ph.i.i.i.i.i, label %._crit_edge._crit_edge.i.thread.i.i.i.i

.preheader93.lr.ph.i.i.i.i.i:                     ; preds = %bb.cg
  %i.ic = getelementptr i8, ptr %.pn73.i.i.i.i, i64 432
  %i.id = getelementptr i8, ptr %.pn73.i.i.i.i, i64 16
  %i.ie = getelementptr i8, ptr %.pn73.i.i.i.i, i64 640 ; 2 uses
  br label %.preheader93.i.i.i.i.i

.preheader93.i.i.i.i.i:                           ; preds = %.split.us.i.i.i.i.i, %.preheader93.lr.ph.i.i.i.i.i
  %.0157.i.i.i.i.i = phi i1 [ false, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi102.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
  %.060156.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi101.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
  %.064155.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi100.i.i.i.i.i, %.split.us.i.i.i.i.i ]
  %.067154.i.i.i.i.i = phi i64 [ %i.hu, %.preheader93.lr.ph.i.i.i.i.i ], [ %i.jc, %.split.us.i.i.i.i.i ] ; 3 uses
  %.071152.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i, %.split.us.i.i.i.i.i ]
  %i.if = inttoptr i64 %.067154.i.i.i.i.i to ptr
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !109
  %i.ih = and i64 %i.ig, 31
  %i.ii = icmp eq i64 %i.ih, 29
  %i.ij = zext i1 %i.ii to i32
  %.lhs.trunc.i.i.i52.i.i = trunc i64 %.067154.i.i.i.i.i to i16 ; 2 uses
  %i.ik = udiv i16 %.lhs.trunc.i.i.i52.i.i, 40
  %i.il = udiv i16 %.lhs.trunc.i.i.i52.i.i, 2560
  %.zext88.i.i.i.i.i = zext nneg i16 %i.il to i64 ; 3 uses
  %i.im = getelementptr [8 x i8], ptr %i.ic, i64 %.zext88.i.i.i.i.i
  %i.in = load i64, ptr %i.im, align 8, !tbaa !59
  %i.io = and i16 %i.ik, 63
  %i.ip = zext nneg i16 %i.io to i64
  %i.iq = shl nuw i64 1, %i.ip                    ; 3 uses
  %i.ir = and i64 %i.iq, %i.in
  %.not81.i.i.i.i.i = icmp eq i64 %i.ir, 0
  %i.is = getelementptr [8 x i8], ptr %i.ie, i64 %.zext88.i.i.i.i.i
  %i.it = load i64, ptr %i.is, align 8, !tbaa !59
  %i.iu = and i64 %i.iq, %i.it
  %.fr165.i.i.i.i.i = freeze i64 %i.iu
  %.not83.i.i.i.i.i = icmp ne i64 %.fr165.i.i.i.i.i, 0 ; 3 uses
  %i.iv = zext i1 %.not83.i.i.i.i.i to i32
  br i1 %.not81.i.i.i.i.i, label %.preheader93.split.us.i.i.i.i.i, label %.preheader93.split.i.i.i.i.i

.preheader93.split.us.i.i.i.i.i:                  ; preds = %.preheader93.i.i.i.i.i
  %..060156.i.i.i.i.i = select i1 %.not83.i.i.i.i.i, i32 1, i32 %.060156.i.i.i.i.i
  br label %.split.us.i.i.i.i.i

.preheader93.split.i.i.i.i.i:                     ; preds = %.preheader93.i.i.i.i.i
  %i.iw = getelementptr [8 x i8], ptr %i.id, i64 %.zext88.i.i.i.i.i
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !59
  %i.iy = and i64 %i.ix, %i.iq
  %.fr.i.i.i.i.i = freeze i64 %i.iy
  %.not82.i.i.i.i.i = icmp ne i64 %.fr.i.i.i.i.i, 0
  %..060156163.i.i.i.i.i = select i1 %.not83.i.i.i.i.i, i32 1, i32 %.060156.i.i.i.i.i
  %.0157..i.i.i.i.i = select i1 %.not82.i.i.i.i.i, i1 true, i1 %.0157.i.i.i.i.i
  br label %.split.us.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.split.us.i.i.i.i.i
  %i.iz = icmp ne i32 %.us-phi101.i.i.i.i.i, 1
  %i.ja = load i16, ptr %i.o, align 4
  %i.jb = and i16 %i.ja, 2048
  %.not.i.i.i.i.i = icmp ne i16 %i.jb, 0
  %brmerge.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.iz
  br i1 %brmerge.i.i.i.i, label %._crit_edge._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.preheader93.split.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i
  %.us-phi101.i.i.i.i.i = phi i32 [ %..060156.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %..060156163.i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
  %.us-phi102.i.i.i.i.i = phi i1 [ %.0157.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %.0157..i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
  %.us-phi100.i.i.i.i.i = add i32 %.064155.i.i.i.i.i, %i.iv ; 2 uses
  %.us-phi.i.i.i.i.i = add i32 %.071152.i.i.i.i.i, %i.ij ; 2 uses
  %i.jc = add i64 %.067154.i.i.i.i.i, %i.hy       ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.ia
  br i1 %i.jd, label %.preheader93.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !144

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i.i, %bb.de
  %.059161.i.i.i.i.i = phi i64 [ %i.kh, %bb.de ], [ %i.hu, %._crit_edge.i.i.i.i.i ] ; 9 uses
  %.lhs.trunc89.i.i.i.i.i = trunc i64 %.059161.i.i.i.i.i to i16 ; 2 uses
  %i.je = udiv i16 %.lhs.trunc89.i.i.i.i.i, 40
  %i.jf = udiv i16 %.lhs.trunc89.i.i.i.i.i, 2560
  %.zext92.i.i.i.i.i = zext nneg i16 %i.jf to i64
  %i.jg = getelementptr [8 x i8], ptr %i.ie, i64 %.zext92.i.i.i.i.i
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !59
  %i.ji = and i16 %i.je, 63
  %i.jj = zext nneg i16 %i.ji to i64
  %i.jk = shl nuw i64 1, %i.jj
  %i.jl = and i64 %i.jk, %i.jh
  %.not78.i.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not78.i.i.i.i.i, label %bb.de, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.jn = icmp eq i64 %.059161.i.i.i.i.i, 0
  %i.jo = and i64 %.059161.i.i.i.i.i, 7
  %i.jp = icmp ne i64 %i.jo, 0
  %i.jq = or i1 %i.jn, %i.jp
  br i1 %i.jq, label %bb.ci, label %rb_type.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.jr = call i64 @llvm.fshl.i64(i64 %.059161.i.i.i.i.i, i64 %.059161.i.i.i.i.i, i64 62) ; 3 uses
  %i.js = icmp ult i64 %i.jr, 10
  %switch.maskindex107 = trunc i64 %i.jr to i16
  %switch.shifted108 = lshr i16 547, %switch.maskindex107
  %switch.lobit109 = trunc i16 %switch.shifted108 to i1
  %or.cond112 = select i1 %i.js, i1 %switch.lobit109, i1 false
  br i1 %or.cond112, label %switch.lookup106, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jt = trunc i64 %.059161.i.i.i.i.i to i1
  br i1 %i.jt, label %rb_type.exit.thread13.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ju = and i64 %.059161.i.i.i.i.i, 254
  %i.jv = icmp eq i64 %i.ju, 12
  br i1 %i.jv, label %rb_type.exit.thread11.i.i.i.i, label %rb_type.exit.thread.i.i.i.i

rb_type.exit.i.i.i.i:                             ; preds = %bb.ch
  %i.jw = inttoptr i64 %.059161.i.i.i.i.i to ptr  ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !109 ; 2 uses
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = and i32 %i.jy, 31
  switch i32 %i.jz, label %bb.dd [
    i32 0, label %obj_type_name.exit.i54.i.i
    i32 1, label %bb.cl
    i32 2, label %bb.cm
    i32 3, label %bb.cn
    i32 4, label %rb_type.exit.thread.i.i.i.i
    i32 5, label %bb.co
    i32 6, label %bb.cp
    i32 7, label %bb.cq
    i32 8, label %bb.cr
    i32 9, label %bb.cs
    i32 10, label %bb.ct
    i32 11, label %bb.cu
    i32 13, label %bb.cv
    i32 14, label %bb.cw
    i32 15, label %bb.cx
    i32 17, label %rb_type.exit.thread5.i.i.i.i
    i32 18, label %rb_type.exit.thread7.i.i58.i.i
    i32 19, label %rb_type.exit.thread9.i.i57.i.i
    i32 20, label %rb_type.exit.thread11.i.i.i.i
    i32 21, label %rb_type.exit.thread13.i.i.i.i
    i32 22, label %rb_type.exit.thread15.i.i56.i.i
    i32 26, label %bb.cy
    i32 28, label %bb.cz
    i32 30, label %bb.da
    i32 29, label %bb.db
    i32 12, label %bb.dc
  ]

bb.cl:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cm:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cn:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread.i.i.i.i:                      ; preds = %rb_type.exit.i.i.i.i, %bb.ck
  br label %obj_type_name.exit.i54.i.i

bb.co:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cp:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cq:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cr:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cs:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.ct:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cu:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cv:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cw:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cx:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread5.i.i.i.i:                     ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread7.i.i58.i.i:                   ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread9.i.i57.i.i:                   ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread11.i.i.i.i:                    ; preds = %rb_type.exit.i.i.i.i, %bb.ck
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread13.i.i.i.i:                    ; preds = %rb_type.exit.i.i.i.i, %bb.cj
  br label %obj_type_name.exit.i54.i.i

rb_type.exit.thread15.i.i56.i.i:                  ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cy:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.cz:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.da:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.db:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

bb.dc:                                            ; preds = %rb_type.exit.i.i.i.i
  %i.ka = and i64 %i.jx, 64
  %.not.i.i.i.i53.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i.i.i53.i.i, label %obj_type_name.exit.i54.i.i, label %rb_objspace_data_type_name.exit.i.i.i.i.i

rb_objspace_data_type_name.exit.i.i.i.i.i:        ; preds = %bb.dc
  %i.kb = getelementptr i8, ptr %i.jw, i64 24
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !131
  %i.kd = and i64 %i.kc, -2
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !133 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.kf, null
  %spec.select.i2.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @.str.303, ptr %i.kf
  br label %obj_type_name.exit.i54.i.i

bb.dd:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

switch.lookup106:                                 ; preds = %bb.ci
  %switch.gep110 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.obj_type_name, i64 %i.jr
  %switch.load111 = load ptr, ptr %switch.gep110, align 8
  br label %obj_type_name.exit.i54.i.i

obj_type_name.exit.i54.i.i:                       ; preds = %switch.lookup106, %bb.dd, %rb_objspace_data_type_name.exit.i.i.i.i.i, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %rb_type.exit.thread15.i.i56.i.i, %rb_type.exit.thread13.i.i.i.i, %rb_type.exit.thread11.i.i.i.i, %rb_type.exit.thread9.i.i57.i.i, %rb_type.exit.thread7.i.i58.i.i, %rb_type.exit.thread5.i.i.i.i, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %rb_type.exit.thread.i.i.i.i, %bb.cn, %bb.cm, %bb.cl, %rb_type.exit.i.i.i.i
  %.0.i3.i.i55.i.i = phi ptr [ @.str.304, %bb.dd ], [ @.str.278, %rb_type.exit.i.i.i.i ], [ @.str.279, %bb.cl ], [ @.str.280, %bb.cm ], [ @.str.281, %bb.cn ], [ @.str.282, %rb_type.exit.thread.i.i.i.i ], [ @.str.283, %bb.co ], [ @.str.284, %bb.cp ], [ @.str.285, %bb.cq ], [ @.str.286, %bb.cr ], [ @.str.287, %bb.cs ], [ @.str.288, %bb.ct ], [ @.str.289, %bb.cu ], [ @.str.290, %bb.cv ], [ @.str.291, %bb.cw ], [ @.str.292, %bb.cx ], [ @.str.293, %rb_type.exit.thread5.i.i.i.i ], [ @.str.294, %rb_type.exit.thread7.i.i58.i.i ], [ @.str.295, %rb_type.exit.thread9.i.i57.i.i ], [ @.str.296, %rb_type.exit.thread11.i.i.i.i ], [ @.str.297, %rb_type.exit.thread13.i.i.i.i ], [ @.str.298, %rb_type.exit.thread15.i.i56.i.i ], [ @.str.299, %bb.cy ], [ @.str.300, %bb.cz ], [ @.str.301, %bb.da ], [ @.str.302, %bb.db ], [ @.str.303, %bb.dc ], [ %spec.select.i2.i.i.i.i, %rb_objspace_data_type_name.exit.i.i.i.i.i ], [ %switch.load111, %switch.lookup106 ]
  %i.kg = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jm, i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef nonnull %.0.i3.i.i55.i.i) #46 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %obj_type_name.exit.i54.i.i, %.lr.ph.i.i.i.i.i
  %i.kh = add i64 %.059161.i.i.i.i.i, %i.hy       ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.ia
  br i1 %i.ki, label %.lr.ph.i.i.i.i.i, label %._crit_edge162.i.i.i.i.i, !llvm.loop !145

._crit_edge162.i.i.i.i.i:                         ; preds = %bb.de
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.95, ptr noundef nonnull %.01774.i.i.i.i, i32 noundef %.us-phi100.i.i.i.i.i, ptr noundef nonnull @.str.96) #61
  unreachable

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %i.kj = and i8 %i.hp, 4
  %i.kk = icmp eq i8 %i.kj, 0
  %or.cond3.i.i.i.i.i = select i1 %i.kk, i1 %.us-phi102.i.i.i.i.i, i1 false
  br i1 %or.cond3.i.i.i.i.i, label %bb.df, label %._crit_edge._crit_edge.i.thread.i.i.i.i

bb.df:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.97, ptr noundef nonnull %.01774.i.i.i.i, ptr noundef nonnull @.str.96) #61
  unreachable

._crit_edge._crit_edge.i.thread.i.i.i.i:          ; preds = %._crit_edge._crit_edge.i.i.i.i.i, %bb.cg
  %.071.lcssa.i2642.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ 0, %bb.cg ] ; 2 uses
  %i.kl = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -50
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !146
  %i.kn = zext i16 %i.km to i32                   ; 2 uses
  %.not79.i.i.i.i.i = icmp eq i32 %.071.lcssa.i2642.i.i.i.i, %i.kn
  br i1 %.not79.i.i.i.i.i, label %gc_verify_heap_page.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge._crit_edge.i.thread.i.i.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.98, ptr noundef nonnull %.01774.i.i.i.i, i32 noundef %i.kn, i32 noundef %.071.lcssa.i2642.i.i.i.i) #61
  unreachable

gc_verify_heap_page.exit.i.i.i.i:                 ; preds = %._crit_edge._crit_edge.i.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.pn.i.i.i.i = load ptr, ptr %.pn73.i.i.i.i, align 8, !tbaa !141 ; 2 uses
  %.not.i.i51.i.i = icmp eq ptr %.pn.i.i.i.i, %i.ha
  br i1 %.not.i.i51.i.i, label %gc_verify_heap_pages_.exit.i.i.i, label %.lr.ph76.i.i.i.i, !llvm.loop !147

gc_verify_heap_pages_.exit.i.i.i:                 ; preds = %gc_verify_heap_page.exit.i.i.i.i, %.critedge.thread.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 5
  br i1 %exitcond.not.i.i.i, label %gc_verify_heap_pages.exit.i.i, label %.critedge.thread.i.i, !llvm.loop !148

gc_verify_heap_pages.exit.i.i:                    ; preds = %gc_verify_heap_pages_.exit.i.i.i
  %i.ko = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i59.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i59.i.i, label %bb.dh, label %rb_gc_get_ractor_newobj_cache.exit.i.i

bb.dh:                                            ; preds = %gc_verify_heap_pages.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.kp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !14
  store volatile ptr %i.kq, ptr %i.b, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kr = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.ks = getelementptr i8, ptr %.val.i.i.i.i.i, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !30
  br label %rb_gc_get_ractor_newobj_cache.exit.i.i

rb_gc_get_ractor_newobj_cache.exit.i.i:           ; preds = %bb.dh, %gc_verify_heap_pages.exit.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ko, %gc_verify_heap_pages.exit.i.i ], [ %i.kt, %bb.dh ]
  %i.ku = getelementptr i8, ptr %.0.i.i.i.i.i, i64 456
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !49 ; 5 uses
  %i.kw = getelementptr i8, ptr %i.l, i64 80      ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 24     ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !149
  %i.kz = atomicrmw volatile add ptr %i.kw, i64 %i.ky seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.kx, align 8, !tbaa !149
  %i.la = getelementptr i8, ptr %i.l, i64 232     ; 2 uses
  %i.lb = getelementptr i8, ptr %i.kv, i64 48     ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !149
  %i.ld = atomicrmw volatile add ptr %i.la, i64 %i.lc seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.lb, align 8, !tbaa !149
  %i.le = getelementptr i8, ptr %i.l, i64 384     ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kv, i64 72     ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !149
  %i.lh = atomicrmw volatile add ptr %i.le, i64 %i.lg seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.lf, align 8, !tbaa !149
  %i.li = getelementptr i8, ptr %i.l, i64 536     ; 2 uses
  %i.lj = getelementptr i8, ptr %i.kv, i64 96     ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !149
  %i.ll = atomicrmw volatile add ptr %i.li, i64 %i.lk seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.lj, align 8, !tbaa !149
  %i.lm = getelementptr i8, ptr %i.l, i64 688     ; 2 uses
  %i.ln = getelementptr i8, ptr %i.kv, i64 120    ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !149
  %i.lp = atomicrmw volatile add ptr %i.lm, i64 %i.lo seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.ln, align 8, !tbaa !149
  %i.lq = getelementptr i8, ptr %i.l, i64 144
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !111
  %.not.not.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.not.i.i.i, label %bb.di, label %has_sweeping_pages.exit.thread.i.i

bb.di:                                            ; preds = %rb_gc_get_ractor_newobj_cache.exit.i.i
  %i.ls = getelementptr i8, ptr %i.l, i64 296
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !111
  %.not.1.not.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.1.not.i.i.i, label %bb.dj, label %has_sweeping_pages.exit.thread.i.i

bb.dj:                                            ; preds = %bb.di
  %i.lu = getelementptr i8, ptr %i.l, i64 448
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !111
  %.not.2.not.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not.2.not.i.i.i, label %bb.dk, label %has_sweeping_pages.exit.thread.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.lw = getelementptr i8, ptr %i.l, i64 600
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !111
  %.not.3.not.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.3.not.i.i.i, label %has_sweeping_pages.exit.i.i, label %has_sweeping_pages.exit.thread.i.i

has_sweeping_pages.exit.i.i:                      ; preds = %bb.dk
  %i.ly = getelementptr i8, ptr %i.l, i64 752
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !111
  %.not.4.not.i.not.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.4.not.i.not.i.i, label %bb.dl, label %has_sweeping_pages.exit.thread.i.i

bb.dl:                                            ; preds = %has_sweeping_pages.exit.i.i
  %i.ma = getelementptr i8, ptr %i.l, i64 816
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !151
  %.not42.i.i = icmp ne i32 %i.mb, 0
  %i.mc = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i60.i.i = icmp eq ptr %i.mc, null
  %or.cond.i.i = select i1 %.not42.i.i, i1 true, i1 %.not.i.i60.i.i
  br i1 %or.cond.i.i, label %has_sweeping_pages.exit.thread.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.md = load i64, ptr %i.kw, align 8, !tbaa !152
  %i.me = load i64, ptr %i.la, align 8, !tbaa !152
  %i.mf = load i64, ptr %i.le, align 8, !tbaa !152
  %i.mg = load i64, ptr %i.li, align 8, !tbaa !152
  %i.mh = load i64, ptr %i.lm, align 8, !tbaa !152
  %i.mi = getelementptr i8, ptr %i.l, i64 88
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !153
  %i.mk = getelementptr i8, ptr %i.l, i64 240
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !153
  %i.mm = getelementptr i8, ptr %i.l, i64 392
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !153
  %i.mo = getelementptr i8, ptr %i.l, i64 544
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !153
  %i.mq = getelementptr i8, ptr %i.l, i64 696
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !153
  %i.ms = getelementptr i8, ptr %i.l, i64 96
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !154
  %i.mu = getelementptr i8, ptr %i.l, i64 248
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !154
  %i.mw = getelementptr i8, ptr %i.l, i64 400
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !154
  %i.my = getelementptr i8, ptr %i.l, i64 552
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !154
  %i.na = getelementptr i8, ptr %i.l, i64 704
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !154
  %.neg2 = add i64 %i.me, %i.md
  %.neg4 = add i64 %.neg2, %i.mf
  %.neg6 = add i64 %.neg4, %i.mg
  %.neg8 = add i64 %.neg6, %i.mh
  %i.nc = add i64 %i.mj, %i.ml
  %i.nd = add i64 %i.nc, %i.mn
  %i.ne = add i64 %i.nd, %i.mp
  %i.nf = add i64 %i.ne, %i.mr
  %i.ng = add i64 %i.nf, %i.mt
  %i.nh = add i64 %i.ng, %i.mv
  %i.ni = add i64 %i.nh, %i.mx
  %i.nj = add i64 %i.ni, %i.mz
  %i.nk = add i64 %i.nj, %i.nb
  %i.nl = sub i64 %.neg8, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !116
  %.not43.i.i = icmp eq i64 %i.nl, %i.nn
  br i1 %.not43.i.i, label %has_sweeping_pages.exit.thread.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.np = call fastcc i64 @total_final_slots_count(ptr noundef nonnull %i.l)
  %i.nq = call fastcc i64 @total_freed_objects(ptr noundef nonnull %i.l)
  %i.nr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.no, i32 noundef 1, ptr noundef nonnull @.str.66, i64 noundef %i.np, i64 noundef %i.nq) #46 ; 0 uses
  %i.ns = call fastcc i64 @objspace_live_slots(ptr noundef nonnull %i.l)
  %i.nt = load i64, ptr %i.nm, align 8, !tbaa !116
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.67, i64 noundef %i.ns, i64 noundef %i.nt) #61
  unreachable

has_sweeping_pages.exit.thread.i.i:               ; preds = %bb.dm, %bb.dl, %has_sweeping_pages.exit.i.i, %bb.dk, %bb.dj, %bb.di, %rb_gc_get_ractor_newobj_cache.exit.i.i
  %i.nu = load i16, ptr %i.o, align 4             ; 2 uses
  %i.nv = and i16 %i.nu, 3
  %i.nw = icmp eq i16 %i.nv, 1
  br i1 %i.nw, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %has_sweeping_pages.exit.thread.i.i
  %i.nx = getelementptr i8, ptr %i.l, i64 1176
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !155 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !122 ; 2 uses
  %.not44.i.i = icmp eq i64 %i.ny, %i.oa
  br i1 %.not44.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.68, i64 noundef %i.ny, i64 noundef %i.oa) #61
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.ob = getelementptr i8, ptr %i.l, i64 1160
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !156 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !123 ; 2 uses
  %.not45.i.i = icmp eq i64 %i.oc, %i.oe
  br i1 %.not45.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.69, i64 noundef %i.oc, i64 noundef %i.oe) #61
  unreachable

bb.ds:                                            ; preds = %bb.dq, %has_sweeping_pages.exit.thread.i.i
  %i.of = getelementptr i8, ptr %i.l, i64 816
end_hunk_0
begin_hunk_1_@newobj_cache_miss:bb.a

bb.ak:                                            ; preds = %bb.aj
  call void @rb_memerror() #62
  unreachable

bb.al:                                            ; preds = %bb.aj
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gc_continue(ptr noundef %0, ptr noundef captures(address) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rusage, align 8             ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 6 uses
  %5 = alloca %struct.rusage, align 8             ; 6 uses
  %6 = alloca %struct.rusage, align 8             ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 6 uses
  %8 = alloca %struct.rusage, align 8             ; 6 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 28         ; 9 uses
  %i.f = load i16, ptr %i.e, align 4
  %i.g = and i16 %i.f, 2048
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !447
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %.not.not.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111
  %.not.1.not.i = icmp eq ptr %i.n, null
  br i1 %.not.1.not.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 448
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !111
  %.not.2.not.i = icmp eq ptr %i.p, null
  br i1 %.not.2.not.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 600
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111
  %.not.3.not.i = icmp eq ptr %i.r, null
  br i1 %.not.3.not.i, label %has_sweeping_pages.exit, label %.critedge

has_sweeping_pages.exit:                          ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 752
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111
  %.not.4.not.i.not = icmp eq ptr %i.t, null
  br i1 %.not.4.not.i.not, label %.critedge15, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.a, %has_sweeping_pages.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.u = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.g, label %rb_gc_vm_lock.exit.i

bb.g:                                             ; preds = %.critedge
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.d) #46
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.g, %.critedge
  %i.v = phi i32 [ 0, %.critedge ], [ %.pre.i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @rb_vm_barrier() #46
  %i.w = load i16, ptr %i.e, align 4              ; 2 uses
  %i.x = and i16 %i.w, 32
  %.not.i = icmp eq i16 %i.x, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !189

bb.h:                                             ; preds = %rb_gc_vm_lock.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.106) #61
  unreachable

bb.i:                                             ; preds = %rb_gc_vm_lock.exit.i
  %i.y = or disjoint i16 %i.w, 32                 ; 4 uses
  store i16 %i.y, ptr %i.e, align 4
  %i.z = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.aa = and i32 %i.z, 33554432
  %.not12.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not12.i.i, label %gc_enter.exit, label %bb.j, !prof !189

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  store volatile ptr %i.ac, ptr %i.c, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !224 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %gc_enter.exit, label %rb_ec_hooks.exit.i.i

rb_ec_hooks.exit.i.i:                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.ag = getelementptr i8, ptr %.val.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !225 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1120
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !226
  %i.ak = and i32 %i.aj, 33554432
  %.not11.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i, label %gc_enter.exit, label %bb.k, !prof !189

bb.k:                                             ; preds = %rb_ec_hooks.exit.i.i
  %i.al = getelementptr i8, ptr %i.ah, i64 1112
  %i.am = getelementptr i8, ptr %i.ae, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  store i32 33554432, ptr %9, align 8, !tbaa !230
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr %i.ao, align 8, !tbaa !232
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !233
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.an, ptr %i.aq, align 8, !tbaa !234
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  store i64 36, ptr %i.as, align 8, !tbaa !235
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.at, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %9, ptr noundef %i.al, i32 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %.pre = load i16, ptr %i.e, align 4
  br label %gc_enter.exit

gc_enter.exit:                                    ; preds = %bb.i, %bb.j, %rb_ec_hooks.exit.i.i, %bb.k
  %i.au = phi i16 [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %i.y, %rb_ec_hooks.exit.i.i ], [ %.pre, %bb.k ] ; 2 uses
  %i.av = and i16 %i.au, 2048
  %.not13 = icmp eq i16 %i.av, 0
  br i1 %.not13, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %gc_enter.exit
  %i.aw = and i16 %i.au, 4096
  %.not.i.i16 = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i16, label %gc_marking_enter.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %0, i64 1064      ; 3 uses
  %.b.i.i.i.i = load i1, ptr @current_process_time.try_clock_gettime, align 4
  br i1 %.b.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @clock_gettime(i32 noundef 2, ptr noundef %i.ax) #46
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %gc_marking_enter.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i1 true, ptr @current_process_time.try_clock_gettime, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  %i.ba = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %8) #46
  %.not.i.i.i.i17 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i17, label %current_process_time.exit.thread4.i.i.i, label %bb.p

current_process_time.exit.thread4.i.i.i:          ; preds = %bb.o
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %8, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ax, align 8, !tbaa !178
  %sext.i.i.i.i = mul i64 %.sroa.4.0.copyload.i.i.i.i, 4294967296000
  %i.bb = ashr exact i64 %sext.i.i.i.i, 32
  %i.bc = getelementptr i8, ptr %0, i64 1072
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %gc_marking_enter.exit.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %gc_marking_enter.exit.i

gc_marking_enter.exit.i:                          ; preds = %bb.p, %current_process_time.exit.thread4.i.i.i, %bb.n, %bb.l
  %i.bd = getelementptr i8, ptr %1, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !447
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %bb.s, label %bb.q

bb.q:                                             ; preds = %gc_marking_enter.exit.i
  %i.bf = getelementptr i8, ptr %0, i64 2216
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !457
  %i.bh = call fastcc range(i32 0, 2) i32 @gc_mark_stacked_objects(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.bg)
  %.not.i7.i = trunc nuw i32 %i.bh to i1
  br i1 %.not.i7.i, label %bb.r, label %gc_marks_step.exit.i

bb.r:                                             ; preds = %bb.q
  call fastcc void @gc_marks_finish(ptr noundef nonnull %0)
  br label %gc_marks_step.exit.i

bb.s:                                             ; preds = %gc_marking_enter.exit.i
  %i.bi = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !458
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !458
  call fastcc void @gc_marks_rest(ptr noundef nonnull %0)
  br label %gc_marks_step.exit.i

gc_marks_step.exit.i:                             ; preds = %bb.s, %bb.r, %bb.q
  %.0.i = phi i1 [ true, %bb.s ], [ false, %bb.q ], [ true, %bb.r ]
  %i.bl = load i16, ptr %i.e, align 4
  %i.bm = and i16 %i.bl, 4096
  %.not.i8.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i8.i, label %gc_marks_continue.exit, label %bb.t

bb.t:                                             ; preds = %gc_marks_step.exit.i
  %i.bn = getelementptr i8, ptr %0, i64 1064      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !178
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %0, i64 1072
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !179
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %bb.v, label %gc_clock_end.exit.i.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %.b.i.i.i9.i = load i1, ptr @current_process_time.try_clock_gettime, align 4
  br i1 %.b.i.i.i9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %7) #46
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.current_process_time.exit.thread_crit_edge.i.i.i, label %bb.x

.current_process_time.exit.thread_crit_edge.i.i.i: ; preds = %bb.w
  %.pre.i.i.i = load i64, ptr %7, align 8, !tbaa !178
  br label %current_process_time.exit.thread.i.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i1 true, ptr @current_process_time.try_clock_gettime, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.bv = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %6) #46
  %.not.i.i.i10.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i10.i, label %current_process_time.exit.thread8.i.i.i, label %current_process_time.exit.i.i.i

current_process_time.exit.thread8.i.i.i:          ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i11.i = load i64, ptr %6, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i.i12.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0.copyload.i.i.i13.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i12.i, align 8, !tbaa !59
  %sext.i.i.i14.i = mul i64 %.sroa.4.0.copyload.i.i.i13.i, 4294967296000
  %i.bw = ashr exact i64 %sext.i.i.i14.i, 32
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %current_process_time.exit.thread.i.i.i

current_process_time.exit.i.i.i:                  ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %gc_clock_end.exit.i.i

current_process_time.exit.thread.i.i.i:           ; preds = %current_process_time.exit.thread8.i.i.i, %.current_process_time.exit.thread_crit_edge.i.i.i
  %i.by = phi i64 [ %.pre.i.i.i, %.current_process_time.exit.thread_crit_edge.i.i.i ], [ %.sroa.0.0.copyload.i.i.i11.i, %current_process_time.exit.thread8.i.i.i ] ; 2 uses
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i = icmp slt i64 %i.by, %i.bz
  br i1 %.not.i.i.i, label %gc_clock_end.exit.i.i, label %bb.y

bb.y:                                             ; preds = %current_process_time.exit.thread.i.i.i
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = mul i64 %i.ca, 1000000000
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !179
  %i.ce = getelementptr i8, ptr %0, i64 1072
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !179
  %i.cg = add i64 %i.cd, %i.cb
  %i.ch = sub i64 %i.cg, %i.cf
  br label %gc_clock_end.exit.i.i

gc_clock_end.exit.i.i:                            ; preds = %bb.y, %current_process_time.exit.thread.i.i.i, %current_process_time.exit.i.i.i, %bb.u
  %.0.i.i.i = phi i64 [ %i.ch, %bb.y ], [ 0, %current_process_time.exit.thread.i.i.i ], [ 0, %current_process_time.exit.i.i.i ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  %i.ci = getelementptr i8, ptr %0, i64 1056      ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !337
  %i.ck = add i64 %i.cj, %.0.i.i.i
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !337
  br label %gc_marks_continue.exit

gc_marks_continue.exit:                           ; preds = %gc_marks_step.exit.i, %gc_clock_end.exit.i.i
  br i1 %.0.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %gc_marks_continue.exit
  call fastcc void @gc_sweep(ptr noundef nonnull %0)
  br label %bb.aa

bb.aa:                                            ; preds = %gc_marks_continue.exit, %bb.z, %gc_enter.exit
  %i.cl = getelementptr i8, ptr %1, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !447
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ab, label %gc_sweep_continue.exit

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !111
  %.not.not.i19 = icmp eq ptr %i.cp, null
  br i1 %.not.not.i19, label %bb.ac, label %has_sweeping_pages.exit25.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr i8, ptr %0, i64 296
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !111
  %.not.1.not.i21 = icmp eq ptr %i.cr, null
  br i1 %.not.1.not.i21, label %bb.ad, label %has_sweeping_pages.exit25.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr i8, ptr %0, i64 448
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !111
  %.not.2.not.i22 = icmp eq ptr %i.ct, null
  br i1 %.not.2.not.i22, label %bb.ae, label %has_sweeping_pages.exit25.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr i8, ptr %0, i64 600
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !111
  %.not.3.not.i23 = icmp eq ptr %i.cv, null
  br i1 %.not.3.not.i23, label %has_sweeping_pages.exit25, label %has_sweeping_pages.exit25.thread

has_sweeping_pages.exit25:                        ; preds = %bb.ae
  %i.cw = getelementptr i8, ptr %0, i64 752
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !111
  %.not.4.not.i24.not = icmp eq ptr %i.cx, null
  br i1 %.not.4.not.i24.not, label %gc_sweep_continue.exit, label %has_sweeping_pages.exit25.thread

has_sweeping_pages.exit25.thread:                 ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ae, %has_sweeping_pages.exit25
  %i.cy = load i16, ptr %i.e, align 4
  %i.cz = and i16 %i.cy, 4096
  %.not.i.i26 = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i26, label %gc_sweeping_enter.exit.i, label %bb.af

bb.af:                                            ; preds = %has_sweeping_pages.exit25.thread
  %i.da = getelementptr i8, ptr %0, i64 1088      ; 3 uses
  %.b.i.i.i.i27 = load i1, ptr @current_process_time.try_clock_gettime, align 4
  br i1 %.b.i.i.i.i27, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = call i32 @clock_gettime(i32 noundef 2, ptr noundef %i.da) #46
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %gc_sweeping_enter.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store i1 true, ptr @current_process_time.try_clock_gettime, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.dd = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %5) #46
  %.not.i.i.i.i28 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i.i28, label %current_process_time.exit.thread4.i.i.i38, label %bb.ai

current_process_time.exit.thread4.i.i.i38:        ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i.i.i39 = load i64, ptr %5, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload.i.i.i.i41 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i40, align 8, !tbaa !59
  store i64 %.sroa.0.0.copyload.i.i.i.i39, ptr %i.da, align 8, !tbaa !178
  %sext.i.i.i.i42 = mul i64 %.sroa.4.0.copyload.i.i.i.i41, 4294967296000
  %i.de = ashr exact i64 %sext.i.i.i.i42, 32
  %i.df = getelementptr i8, ptr %0, i64 1096
  store i64 %i.de, ptr %i.df, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %gc_sweeping_enter.exit.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  br label %gc_sweeping_enter.exit.i

gc_sweeping_enter.exit.i:                         ; preds = %bb.ai, %current_process_time.exit.thread4.i.i.i38, %bb.ag, %has_sweeping_pages.exit25.thread
  %i.dg = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.dh = getelementptr i8, ptr %0, i64 800       ; 5 uses
  %i.di = getelementptr i8, ptr %0, i64 920       ; 5 uses
  %i.dj = call fastcc i32 @gc_sweep_step(ptr noundef nonnull %0, ptr noundef %i.dg)
  %.not.i29 = icmp eq i32 %i.dj, 0
  %i.dk = icmp eq ptr %i.dg, %1
  %or.cond.i = and i1 %i.dk, %.not.i29
  br i1 %or.cond.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %gc_sweeping_enter.exit.i
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !333
  %.not17.i = icmp eq i64 %i.dl, 0
  br i1 %.not17.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load i64, ptr %i.di, align 8, !tbaa !331
  %.not18.i = icmp eq i64 %i.dm, 0
  br i1 %.not18.i, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dn = call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef %i.dg) ; 0 uses
  br label %bb.am
end_hunk_1
begin_hunk_2_@objspace_free_slots:bb.a
  %i.ai = add i64 %.neg31, %i.v
  %i.aj = add i64 %i.ai, %i.x
  %i.ak = add i64 %i.aj, %i.z
  %i.al = add i64 %i.ak, %i.ab
  %i.am = add i64 %i.al, %i.ad
  ret i64 %i.am
}

declare i64 @rb_num2ull(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @get_envparam_size(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call ptr @getenv(ptr noundef %0) #46 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !214
  %.not31 = icmp eq i8 %i.c, 0
  br i1 %.not31, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.d = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #46 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !398  ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214   ; 2 uses
  switch i8 %i.f, label %bb.f [
    i8 107, label %thread-pre-split
    i8 75, label %thread-pre-split
    i8 109, label %bb.d
    i8 77, label %bb.d
    i8 103, label %bb.e
    i8 71, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %thread-pre-split

bb.e:                                             ; preds = %bb.c, %bb.c
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  %.0.ph = phi i64 [ 1073741824, %bb.e ], [ 1048576, %bb.d ], [ 1024, %bb.c ], [ 1024, %bb.c ]
  %i.g = getelementptr i8, ptr %i.e, i64 1        ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !398
  %.pr = load i8, ptr %i.g, align 1, !tbaa !214
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.c
  %i.h = phi i8 [ %.pr, %thread-pre-split ], [ %i.f, %bb.c ] ; 2 uses
  %.promoted = phi ptr [ %i.g, %thread-pre-split ], [ %i.e, %bb.c ]
  %i.i = phi i1 [ true, %thread-pre-split ], [ false, %bb.c ]
  %.0 = phi i64 [ %.0.ph, %thread-pre-split ], [ 0, %bb.c ] ; 2 uses
  %.not3239 = icmp eq i8 %i.h, 0
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.j = tail call ptr @__ctype_b_loc() #73
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !607
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %i.l = phi i8 [ %i.h, %.lr.ph ], [ %i.s, %bb.h ]
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.r, %bb.h ]
  %i.n = zext i8 %i.l to i64
  %i.o = getelementptr [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = and i16 %i.p, 8192
  %.not33 = icmp eq i16 %i.q, 0
  br i1 %.not33, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.m, i64 1        ; 3 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !398
  %i.s = load i8, ptr %i.r, align 1, !tbaa !214   ; 2 uses
  %.not32 = icmp eq i8 %i.s, 0
  br i1 %.not32, label %._crit_edge, label %bb.g, !llvm.loop !608

.critedge:                                        ; preds = %bb.g
  %i.t = call ptr @rb_ruby_verbose_ptr() #46
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59
  %i.v = and i64 %i.u, -5
  %.not35 = icmp eq i64 %i.v, 0
  br i1 %.not35, label %bb.t, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.x = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.253, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %bb.t

._crit_edge:                                      ; preds = %bb.h, %bb.f
  br i1 %i.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %._crit_edge
  %i.y = call range(i64 10, 65) i64 @llvm.cttz.i64(i64 %.0, i1 true)
  %i.z = lshr i64 9223372036854775807, %i.y       ; 2 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = icmp slt i64 %i.d, %i.aa
  %i.ac = icmp slt i64 %i.z, %i.d
  %or.cond = or i1 %i.ab, %i.ac
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = call ptr @rb_ruby_verbose_ptr() #46
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.af = and i64 %i.ae, -5
  %.not38 = icmp eq i64 %i.af, 0
  br i1 %.not38, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.ah = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ag, i32 noundef 1, ptr noundef nonnull @.str.254, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ai = mul i64 %.0, %i.d
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.027 = phi i64 [ %i.ai, %bb.m ], [ %i.d, %._crit_edge ] ; 4 uses
  %i.aj = icmp sgt i64 %.027, 0
  %i.ak = call ptr @rb_ruby_verbose_ptr() #46
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = and i64 %i.al, -5
  %.not37 = icmp eq i64 %i.am, 0                  ; 2 uses
  br i1 %i.aj, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %.not37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.ao = load i64, ptr %1, align 8, !tbaa !59
  %i.ap = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.an, i32 noundef 1, ptr noundef nonnull @.str.255, ptr noundef %0, i64 noundef %.027, i64 noundef %i.ao) #46 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %.027, ptr %1, align 8, !tbaa !59
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  br i1 %.not37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.ar = load i64, ptr %1, align 8, !tbaa !59
  %i.as = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aq, i32 noundef 1, ptr noundef nonnull @.str.256, ptr noundef %0, i64 noundef %.027, i64 noundef %i.ar, i64 noundef 0) #46 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.k, %bb.l, %.critedge, %bb.i, %bb.q
  %.028 = phi i32 [ 0, %bb.k ], [ 0, %.critedge ], [ 1, %bb.q ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.t
  %.1 = phi i32 [ %.028, %bb.t ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @get_envparam_double(ptr noundef %0, ptr noundef captures(none) %1, double noundef %2, double noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @getenv(ptr noundef %0) #46 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !214
  %.not35 = icmp eq i8 %i.c, 0
  br i1 %.not35, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.d = call double @ruby_strtod(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #46 ; 7 uses
  %i.e = load i8, ptr %i.b, align 1, !tbaa !214
  %.not36 = icmp eq i8 %i.e, 0
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !398
  %i.g = load i8, ptr %i.f, align 1, !tbaa !214
  %.not37 = icmp eq i8 %i.g, 0
  br i1 %.not37, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = call ptr @rb_ruby_verbose_ptr() #46
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = and i64 %i.i, -5
  %.not44 = icmp eq i64 %i.j, 0
  br i1 %.not44, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.l = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.253, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %5 = trunc nuw i32 %4 to i1
  %i.m = fcmp oeq double %i.d, 0.000000e+00
  %or.cond = select i1 %5, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = fcmp ugt double %i.d, %2
  br i1 %i.n, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = call ptr @rb_ruby_verbose_ptr() #46
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = and i64 %i.p, -5
  %.not41 = icmp eq i64 %i.q, 0
  br i1 %.not41, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.s = load double, ptr %1, align 8, !tbaa !609
  %i.t = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.r, i32 noundef 1, ptr noundef nonnull @.str.257, ptr noundef %0, double noundef %i.d, double noundef %i.s, double noundef %2) #46 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.h
  %i.u = fcmp une double %3, 0.000000e+00
  %i.v = fcmp ogt double %i.d, %3
  %or.cond38 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond38, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = call ptr @rb_ruby_verbose_ptr() #46
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = and i64 %i.x, -5
  %.not42 = icmp eq i64 %i.y, 0
  br i1 %.not42, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.aa = load double, ptr %1, align 8, !tbaa !609
  %i.ab = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull @.str.258, ptr noundef %0, double noundef %i.d, double noundef %i.aa, double noundef %3) #46 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.j, %bb.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.q

bb.n:                                             ; preds = %bb.g, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.ac = call ptr @rb_ruby_verbose_ptr() #46
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.ae = and i64 %i.ad, -5
  %.not43 = icmp eq i64 %i.ae, 0
  br i1 %.not43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.ag = load double, ptr %1, align 8, !tbaa !609
  %i.ah = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.af, i32 noundef 1, ptr noundef nonnull @.str.259, ptr noundef %0, double noundef %i.d, double noundef %i.ag) #46 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store double %i.d, ptr %1, align 8, !tbaa !609
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.a, %bb.b, %bb.p
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #55

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #56

declare double @ruby_strtod(ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #11

declare void @rb_mark_generic_ivar(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @gc_mark_classext_module(ptr noundef readonly captures(none) %0, i1 zeroext %1, i64 %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !354    ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !555  ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  %i.d = and i64 %i.c, 7
  %i.e = icmp ne i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %gc_mark_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1256     ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !189

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 1248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  tail call fastcc void @gc_mark(ptr noundef %i.k, i64 noundef %i.c)
  br label %gc_mark_internal.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.g, align 8, !tbaa !118
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !119
  tail call void %i.m(i64 noundef %i.c, ptr noundef %i.n) #46, !inline_history !285
  store ptr %i.h, ptr %i.g, align 8, !tbaa !118
  br label %gc_mark_internal.exit

gc_mark_internal.exit:                            ; preds = %bb.d, %bb.c, %bb.a
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !255  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %mark_m_tbl.exit, label %bb.e

bb.e:                                             ; preds = %gc_mark_internal.exit
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.p, ptr noundef nonnull @mark_method_entry_i, ptr noundef %i.a) #46
  br label %mark_m_tbl.exit

mark_m_tbl.exit:                                  ; preds = %gc_mark_internal.exit, %bb.e
  %.b.i = load i1, ptr @gc_checking_shareable, align 1
  br i1 %.b.i, label %gc_mark_internal.exit20, label %bb.f

bb.f:                                             ; preds = %mark_m_tbl.exit
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !556  ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %gc_mark_internal.exit20, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1256     ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118  ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.i, !prof !189

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.w, i64 1248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  tail call fastcc void @gc_mark(ptr noundef %i.ab, i64 noundef %i.r)
  br label %gc_mark_internal.exit20

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.x, align 8, !tbaa !118
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !119
  tail call void %i.ad(i64 noundef %i.r, ptr noundef %i.ae) #46, !inline_history !285
  store ptr %i.y, ptr %i.x, align 8, !tbaa !118
  br label %gc_mark_internal.exit20

gc_mark_internal.exit20:                          ; preds = %bb.i, %bb.h, %bb.f, %mark_m_tbl.exit
  %i.af = getelementptr i8, ptr %0, i64 125
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 4
  %.not18 = icmp eq i8 %i.ah, 0
  br i1 %.not18, label %bb.j, label %bb.l

bb.j:                                             ; preds = %gc_mark_internal.exit20
  %i.ai = getelementptr i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !278 ; 2 uses
  %.not19 = icmp eq ptr %i.aj, null
  br i1 %.not19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.aj, ptr noundef nonnull @mark_const_entry_i, ptr noundef %i.a) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %gc_mark_internal.exit20
  %i.ak = getelementptr i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !569 ; 2 uses
  %.not.i21 = icmp eq ptr %i.al, null
  br i1 %.not.i21, label %mark_m_tbl.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.al, ptr noundef nonnull @mark_method_entry_i, ptr noundef %i.a) #46
  br label %mark_m_tbl.exit22

mark_m_tbl.exit22:                                ; preds = %bb.l, %bb.m
  %i.am = getelementptr i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !557 ; 4 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = and i64 %i.an, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %gc_mark_internal.exit23, label %bb.n

bb.n:                                             ; preds = %mark_m_tbl.exit22
  %i.as = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 1256   ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118 ; 4 uses
end_hunk_2
