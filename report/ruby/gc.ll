inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_verify_internal_consistency:bb.a
  br label %RVALUE_BLACK_P.exit.thread.i.i.i

RVALUE_BLACK_P.exit.thread.i.i.i:                 ; preds = %obj_type_name.exit111.i.i.i, %RB_FL_TEST.exit.i.i.i, %rb_gc_impl_garbage_object_p.exit.thread114.i.i.i, %rb_objspace_reachable_objects_from.exit93.i.i.i, %RVALUE_BLACK_P.exit.i.i.i, %bb.ad, %bb.ac, %.preheader.i.i.i, %.preheader.i.i.i
  %i.gv = add i64 %.055123.i.i.i, %i.as           ; 2 uses
  %.not.i50.i.i = icmp eq i64 %i.gv, %i.au
  br i1 %.not.i50.i.i, label %verify_internal_consistency_i.exit.loopexit.i.i, label %.preheader.i.i.i, !llvm.loop !138

verify_internal_consistency_i.exit.loopexit.i.i:  ; preds = %RVALUE_BLACK_P.exit.thread.i.i.i
  %.pre.i6.i = load ptr, ptr %i.t, align 8, !tbaa !80
  br label %verify_internal_consistency_i.exit.i.i

verify_internal_consistency_i.exit.i.i:           ; preds = %verify_internal_consistency_i.exit.loopexit.i.i, %bb.c
  %i.gw = phi ptr [ %.pre.i6.i, %verify_internal_consistency_i.exit.loopexit.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.gx = add i64 %.03797.i.i, 1
  %.not.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i, label %.critedge.i.i, label %rb_darray_size.exit.i.i, !llvm.loop !140

bb.bm:                                            ; preds = %.critedge.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.65) #61
  unreachable

.critedge.thread.i.i:                             ; preds = %.critedge.thread.i.i.preheader, %gc_verify_heap_pages_.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %gc_verify_heap_pages_.exit.i.i.i ], [ 0, %.critedge.thread.i.i.preheader ] ; 2 uses
  %i.gy = getelementptr [152 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.gz = getelementptr i8, ptr %i.gy, i64 128    ; 3 uses
  %.pn69.i.i.i.i = load ptr, ptr %i.gz, align 8, !tbaa !141 ; 2 uses
  %.not71.i.i.i.i = icmp eq ptr %.pn69.i.i.i.i, %i.gz
  br i1 %.not71.i.i.i.i, label %gc_verify_heap_pages_.exit.i.i.i, label %.lr.ph76.i.i.i.i

.lr.ph76.i.i.i.i:                                 ; preds = %.critedge.thread.i.i, %gc_verify_heap_page.exit.i.i.i.i
  %.pn73.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %gc_verify_heap_page.exit.i.i.i.i ], [ %.pn69.i.i.i.i, %.critedge.thread.i.i ] ; 10 uses
  %.01774.i.i.i.i = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -56 ; 4 uses
  %i.ha = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -8
  %.01864.i.i.i.i = load ptr, ptr %i.ha, align 8, !tbaa !142 ; 2 uses
  %.not1965.i.i.i.i = icmp eq ptr %.01864.i.i.i.i, null
  br i1 %.not1965.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph76.i.i.i.i, %bb.cf
  %.01866.i.i.i.i = phi ptr [ %.018.i.i.i.i, %bb.cf ], [ %.01864.i.i.i.i, %.lr.ph76.i.i.i.i ] ; 3 uses
  %i.hb = load i64, ptr %.01866.i.i.i.i, align 8, !tbaa !109 ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 31                       ; 2 uses
  %.not20.i.i.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not20.i.i.i.i, label %bb.cf, label %rb_type.exit.i.i.i.i.i

rb_type.exit.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !128
  switch i32 %i.hd, label %bb.ce [
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
  %i.hf = and i64 %i.hb, 64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %obj_type_name.exit.i.i.i.i, label %rb_objspace_data_type_name.exit.i.i.i.i.i.i

rb_objspace_data_type_name.exit.i.i.i.i.i.i:      ; preds = %bb.cd
  %i.hg = getelementptr i8, ptr %.01866.i.i.i.i, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !131
  %i.hi = and i64 %i.hh, -2
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !133 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  %spec.select.i2.i.i.i.i.i = select i1 %.not5.i.i.i.i.i.i, ptr @.str.303, ptr %i.hk
  br label %obj_type_name.exit.i.i.i.i

bb.ce:                                            ; preds = %rb_type.exit.i.i.i.i.i
  br label %obj_type_name.exit.i.i.i.i

obj_type_name.exit.i.i.i.i:                       ; preds = %bb.ce, %rb_objspace_data_type_name.exit.i.i.i.i.i.i, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %rb_type.exit.thread15.i.i.i.i.i, %rb_type.exit.thread13.i.i.i.i.i, %rb_type.exit.thread11.i.i.i.i.i, %rb_type.exit.thread9.i.i.i.i.i, %rb_type.exit.thread7.i.i.i.i.i, %rb_type.exit.thread5.i.i.i.i.i, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %rb_type.exit.thread.i.i.i.i.i, %bb.bo, %bb.bn, %rb_type.exit.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi ptr [ @.str.304, %bb.ce ], [ %spec.select.i2.i.i.i.i.i, %rb_objspace_data_type_name.exit.i.i.i.i.i.i ], [ @.str.303, %bb.cd ], [ @.str.280, %bb.bn ], [ @.str.281, %bb.bo ], [ @.str.282, %rb_type.exit.thread.i.i.i.i.i ], [ @.str.283, %bb.bp ], [ @.str.284, %bb.bq ], [ @.str.285, %bb.br ], [ @.str.286, %bb.bs ], [ @.str.287, %bb.bt ], [ @.str.288, %bb.bu ], [ @.str.289, %bb.bv ], [ @.str.290, %bb.bw ], [ @.str.291, %bb.bx ], [ @.str.292, %bb.by ], [ @.str.293, %rb_type.exit.thread5.i.i.i.i.i ], [ @.str.294, %rb_type.exit.thread7.i.i.i.i.i ], [ @.str.295, %rb_type.exit.thread9.i.i.i.i.i ], [ @.str.296, %rb_type.exit.thread11.i.i.i.i.i ], [ @.str.297, %rb_type.exit.thread13.i.i.i.i.i ], [ @.str.298, %rb_type.exit.thread15.i.i.i.i.i ], [ @.str.299, %bb.bz ], [ @.str.300, %bb.ca ], [ @.str.301, %bb.cb ], [ @.str.302, %bb.cc ], [ @.str.279, %rb_type.exit.i.i.i.i.i ]
  %i.hl = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.he, i32 noundef 1, ptr noundef nonnull @.str.93, ptr noundef nonnull %.0.i3.i.i.i.i.i) #46 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %obj_type_name.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.hm = getelementptr i8, ptr %.01866.i.i.i.i, i64 8
  %.018.i.i.i.i = load ptr, ptr %i.hm, align 8, !tbaa !142 ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %.018.i.i.i.i, null
  br i1 %.not19.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !143

._crit_edge.i.i.i.i:                              ; preds = %bb.cf, %.lr.ph76.i.i.i.i
  %i.hn = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -44
  %i.ho = load i8, ptr %i.hn, align 4             ; 2 uses
  %i.hp = and i8 %i.ho, 2
  %i.hq = icmp eq i8 %i.hp, 0
  br i1 %i.hq, label %bb.cg, label %gc_verify_heap_page.exit.i.i.i.i

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hr = load i16, ptr %.01774.i.i.i.i, align 8, !tbaa !100
  %i.hs = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !107 ; 4 uses
  %i.hu = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -54
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !108
  %i.hw = zext i16 %i.hv to i64
  %i.hx = sext i16 %i.hr to i64                   ; 3 uses
  %i.hy = mul nsw i64 %i.hw, %i.hx
  %i.hz = add i64 %i.hy, %i.ht                    ; 3 uses
  %i.ia = icmp ult i64 %i.ht, %i.hz
  br i1 %i.ia, label %.preheader93.lr.ph.i.i.i.i.i, label %._crit_edge._crit_edge.i.thread.i.i.i.i

.preheader93.lr.ph.i.i.i.i.i:                     ; preds = %bb.cg
  %i.ib = getelementptr i8, ptr %.pn73.i.i.i.i, i64 432
  %i.ic = getelementptr i8, ptr %.pn73.i.i.i.i, i64 16
  %i.id = getelementptr i8, ptr %.pn73.i.i.i.i, i64 640 ; 2 uses
  br label %.preheader93.i.i.i.i.i

.preheader93.i.i.i.i.i:                           ; preds = %.split.us.i.i.i.i.i, %.preheader93.lr.ph.i.i.i.i.i
  %.0157.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi102.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
  %.060156.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi101.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
  %.064155.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi100.i.i.i.i.i, %.split.us.i.i.i.i.i ]
  %.067154.i.i.i.i.i = phi i64 [ %i.ht, %.preheader93.lr.ph.i.i.i.i.i ], [ %i.jb, %.split.us.i.i.i.i.i ] ; 3 uses
  %.071152.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i, %.split.us.i.i.i.i.i ]
  %i.ie = inttoptr i64 %.067154.i.i.i.i.i to ptr
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !109
  %i.ig = and i64 %i.if, 31
  %i.ih = icmp eq i64 %i.ig, 29
  %i.ii = zext i1 %i.ih to i32
  %.lhs.trunc.i.i.i52.i.i = trunc i64 %.067154.i.i.i.i.i to i16 ; 2 uses
  %i.ij = udiv i16 %.lhs.trunc.i.i.i52.i.i, 40
  %i.ik = udiv i16 %.lhs.trunc.i.i.i52.i.i, 2560
  %.zext88.i.i.i.i.i = zext nneg i16 %i.ik to i64 ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %i.ib, i64 %.zext88.i.i.i.i.i
  %i.im = load i64, ptr %i.il, align 8, !tbaa !59
  %i.in = and i16 %i.ij, 63
  %i.io = zext nneg i16 %i.in to i64
  %i.ip = shl nuw i64 1, %i.io                    ; 3 uses
  %i.iq = and i64 %i.ip, %i.im
  %.not81.i.i.i.i.i = icmp eq i64 %i.iq, 0
  %i.ir = getelementptr [8 x i8], ptr %i.id, i64 %.zext88.i.i.i.i.i
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !59
  %i.it = and i64 %i.ip, %i.is
  %.fr165.i.i.i.i.i = freeze i64 %i.it
  %.not83.i.i.i.i.i = icmp ne i64 %.fr165.i.i.i.i.i, 0 ; 3 uses
  %i.iu = zext i1 %.not83.i.i.i.i.i to i32
  br i1 %.not81.i.i.i.i.i, label %.preheader93.split.us.i.i.i.i.i, label %.preheader93.split.i.i.i.i.i

.preheader93.split.us.i.i.i.i.i:                  ; preds = %.preheader93.i.i.i.i.i
  %..060156.i.i.i.i.i = select i1 %.not83.i.i.i.i.i, i32 1, i32 %.060156.i.i.i.i.i
  br label %.split.us.i.i.i.i.i

.preheader93.split.i.i.i.i.i:                     ; preds = %.preheader93.i.i.i.i.i
  %i.iv = getelementptr [8 x i8], ptr %i.ic, i64 %.zext88.i.i.i.i.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !59
  %i.ix = and i64 %i.iw, %i.ip
  %.fr.i.i.i.i.i = freeze i64 %i.ix
  %.not82.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i.i, 0
  %..060156163.i.i.i.i.i = select i1 %.not83.i.i.i.i.i, i32 1, i32 %.060156.i.i.i.i.i
  %.0157..i.i.i.i.i = select i1 %.not82.i.i.i.i.i, i32 %.0157.i.i.i.i.i, i32 1
  br label %.split.us.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.split.us.i.i.i.i.i
  %i.iy = icmp ne i32 %.us-phi101.i.i.i.i.i, 1
  %i.iz = load i16, ptr %i.o, align 4
  %i.ja = and i16 %i.iz, 2048
  %.not.i.i.i.i.i = icmp ne i16 %i.ja, 0
  %brmerge.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.iy
  br i1 %brmerge.i.i.i.i, label %._crit_edge._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.preheader93.split.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i
  %.us-phi101.i.i.i.i.i = phi i32 [ %..060156.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %..060156163.i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
  %.us-phi102.i.i.i.i.i = phi i32 [ %.0157.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %.0157..i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
  %.us-phi100.i.i.i.i.i = add i32 %.064155.i.i.i.i.i, %i.iu ; 2 uses
  %.us-phi.i.i.i.i.i = add i32 %.071152.i.i.i.i.i, %i.ii ; 2 uses
  %i.jb = add i64 %.067154.i.i.i.i.i, %i.hx       ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.hz
  br i1 %i.jc, label %.preheader93.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !144

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i.i, %bb.de
  %.059161.i.i.i.i.i = phi i64 [ %i.kf, %bb.de ], [ %i.ht, %._crit_edge.i.i.i.i.i ] ; 10 uses
  %.lhs.trunc89.i.i.i.i.i = trunc i64 %.059161.i.i.i.i.i to i16 ; 2 uses
  %i.jd = udiv i16 %.lhs.trunc89.i.i.i.i.i, 40
  %i.je = udiv i16 %.lhs.trunc89.i.i.i.i.i, 2560
  %.zext92.i.i.i.i.i = zext nneg i16 %i.je to i64
  %i.jf = getelementptr [8 x i8], ptr %i.id, i64 %.zext92.i.i.i.i.i
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !59
  %i.jh = and i16 %i.jd, 63
  %i.ji = zext nneg i16 %i.jh to i64
  %i.jj = shl nuw i64 1, %i.ji
  %i.jk = and i64 %i.jj, %i.jg
  %.not78.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not78.i.i.i.i.i, label %bb.de, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.jm = icmp eq i64 %.059161.i.i.i.i.i, 0
  %i.jn = and i64 %.059161.i.i.i.i.i, 7
  %i.jo = icmp ne i64 %i.jn, 0
  %i.jp = or i1 %i.jm, %i.jo
  br i1 %i.jp, label %bb.ci, label %rb_type.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.jq = icmp ult i64 %.059161.i.i.i.i.i, 37
  %switch.shifted106 = lshr i64 68720525329, %.059161.i.i.i.i.i
  %switch.lobit107 = trunc i64 %switch.shifted106 to i1
  %or.cond110 = select i1 %i.jq, i1 %switch.lobit107, i1 false
  br i1 %or.cond110, label %switch.lookup105, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jr = trunc i64 %.059161.i.i.i.i.i to i1
  br i1 %i.jr, label %rb_type.exit.thread13.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.js = and i64 %.059161.i.i.i.i.i, 254
  %i.jt = icmp eq i64 %i.js, 12
  br i1 %i.jt, label %rb_type.exit.thread11.i.i.i.i, label %rb_type.exit.thread.i.i.i.i

rb_type.exit.i.i.i.i:                             ; preds = %bb.ch
  %i.ju = inttoptr i64 %.059161.i.i.i.i.i to ptr  ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !109 ; 2 uses
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = and i32 %i.jw, 31
  switch i32 %i.jx, label %bb.dd [
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
  %i.jy = and i64 %i.jv, 64
  %.not.i.i.i.i53.i.i = icmp eq i64 %i.jy, 0
  br i1 %.not.i.i.i.i53.i.i, label %obj_type_name.exit.i54.i.i, label %rb_objspace_data_type_name.exit.i.i.i.i.i

rb_objspace_data_type_name.exit.i.i.i.i.i:        ; preds = %bb.dc
  %i.jz = getelementptr i8, ptr %i.ju, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !131
  %i.kb = and i64 %i.ka, -2
  %i.kc = inttoptr i64 %i.kb to ptr
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !133 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.kd, null
  %spec.select.i2.i.i.i.i = select i1 %.not5.i.i.i.i.i, ptr @.str.303, ptr %i.kd
  br label %obj_type_name.exit.i54.i.i

bb.dd:                                            ; preds = %rb_type.exit.i.i.i.i
  br label %obj_type_name.exit.i54.i.i

switch.lookup105:                                 ; preds = %bb.ci
  %switch.gep108 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.obj_type_name, i64 %.059161.i.i.i.i.i
  %switch.load109 = load ptr, ptr %switch.gep108, align 8
  br label %obj_type_name.exit.i54.i.i

obj_type_name.exit.i54.i.i:                       ; preds = %switch.lookup105, %bb.dd, %rb_objspace_data_type_name.exit.i.i.i.i.i, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %rb_type.exit.thread15.i.i56.i.i, %rb_type.exit.thread13.i.i.i.i, %rb_type.exit.thread11.i.i.i.i, %rb_type.exit.thread9.i.i57.i.i, %rb_type.exit.thread7.i.i58.i.i, %rb_type.exit.thread5.i.i.i.i, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %rb_type.exit.thread.i.i.i.i, %bb.cn, %bb.cm, %bb.cl, %rb_type.exit.i.i.i.i
  %.0.i3.i.i55.i.i = phi ptr [ @.str.304, %bb.dd ], [ @.str.278, %rb_type.exit.i.i.i.i ], [ @.str.279, %bb.cl ], [ @.str.280, %bb.cm ], [ @.str.281, %bb.cn ], [ @.str.282, %rb_type.exit.thread.i.i.i.i ], [ @.str.283, %bb.co ], [ @.str.284, %bb.cp ], [ @.str.285, %bb.cq ], [ @.str.286, %bb.cr ], [ @.str.287, %bb.cs ], [ @.str.288, %bb.ct ], [ @.str.289, %bb.cu ], [ @.str.290, %bb.cv ], [ @.str.291, %bb.cw ], [ @.str.292, %bb.cx ], [ @.str.293, %rb_type.exit.thread5.i.i.i.i ], [ @.str.294, %rb_type.exit.thread7.i.i58.i.i ], [ @.str.295, %rb_type.exit.thread9.i.i57.i.i ], [ @.str.296, %rb_type.exit.thread11.i.i.i.i ], [ @.str.297, %rb_type.exit.thread13.i.i.i.i ], [ @.str.298, %rb_type.exit.thread15.i.i56.i.i ], [ @.str.299, %bb.cy ], [ @.str.300, %bb.cz ], [ @.str.301, %bb.da ], [ @.str.302, %bb.db ], [ @.str.303, %bb.dc ], [ %spec.select.i2.i.i.i.i, %rb_objspace_data_type_name.exit.i.i.i.i.i ], [ %switch.load109, %switch.lookup105 ]
  %i.ke = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jl, i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef nonnull %.0.i3.i.i55.i.i) #46 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %obj_type_name.exit.i54.i.i, %.lr.ph.i.i.i.i.i
  %i.kf = add i64 %.059161.i.i.i.i.i, %i.hx       ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.hz
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i, label %._crit_edge162.i.i.i.i.i, !llvm.loop !145

._crit_edge162.i.i.i.i.i:                         ; preds = %bb.de
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.95, ptr noundef nonnull %.01774.i.i.i.i, i32 noundef %.us-phi100.i.i.i.i.i, ptr noundef nonnull @.str.96) #61
  unreachable

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %6 = icmp ne i32 %.us-phi102.i.i.i.i.i, 0
  %i.kh = and i8 %i.ho, 4
  %i.ki = icmp eq i8 %i.kh, 0
  %or.cond3.i.i.i.i.i = select i1 %i.ki, i1 %6, i1 false
  br i1 %or.cond3.i.i.i.i.i, label %bb.df, label %._crit_edge._crit_edge.i.thread.i.i.i.i

bb.df:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.97, ptr noundef nonnull %.01774.i.i.i.i, ptr noundef nonnull @.str.96) #61
  unreachable

._crit_edge._crit_edge.i.thread.i.i.i.i:          ; preds = %._crit_edge._crit_edge.i.i.i.i.i, %bb.cg
  %.071.lcssa.i2642.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ 0, %bb.cg ] ; 2 uses
  %i.kj = getelementptr i8, ptr %.pn73.i.i.i.i, i64 -50
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !146
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %.not79.i.i.i.i.i = icmp eq i32 %.071.lcssa.i2642.i.i.i.i, %i.kl
  br i1 %.not79.i.i.i.i.i, label %gc_verify_heap_page.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge._crit_edge.i.thread.i.i.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.98, ptr noundef nonnull %.01774.i.i.i.i, i32 noundef %i.kl, i32 noundef %.071.lcssa.i2642.i.i.i.i) #61
  unreachable

gc_verify_heap_page.exit.i.i.i.i:                 ; preds = %._crit_edge._crit_edge.i.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.pn.i.i.i.i = load ptr, ptr %.pn73.i.i.i.i, align 8, !tbaa !141 ; 2 uses
  %.not.i.i51.i.i = icmp eq ptr %.pn.i.i.i.i, %i.gz
  br i1 %.not.i.i51.i.i, label %gc_verify_heap_pages_.exit.i.i.i, label %.lr.ph76.i.i.i.i, !llvm.loop !147

gc_verify_heap_pages_.exit.i.i.i:                 ; preds = %gc_verify_heap_page.exit.i.i.i.i, %.critedge.thread.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 5
  br i1 %exitcond.not.i.i.i, label %gc_verify_heap_pages.exit.i.i, label %.critedge.thread.i.i, !llvm.loop !148

gc_verify_heap_pages.exit.i.i:                    ; preds = %gc_verify_heap_pages_.exit.i.i.i
  %i.km = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i59.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i59.i.i, label %bb.dh, label %rb_gc_get_ractor_newobj_cache.exit.i.i

bb.dh:                                            ; preds = %gc_verify_heap_pages.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.kn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !14
  store volatile ptr %i.ko, ptr %i.b, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kp = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.kp, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.kq = getelementptr i8, ptr %.val.i.i.i.i.i, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !30
  br label %rb_gc_get_ractor_newobj_cache.exit.i.i

rb_gc_get_ractor_newobj_cache.exit.i.i:           ; preds = %bb.dh, %gc_verify_heap_pages.exit.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.km, %gc_verify_heap_pages.exit.i.i ], [ %i.kr, %bb.dh ]
  %i.ks = getelementptr i8, ptr %.0.i.i.i.i.i, i64 456
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !49 ; 5 uses
  %i.ku = getelementptr i8, ptr %i.l, i64 80      ; 2 uses
  %i.kv = getelementptr i8, ptr %i.kt, i64 24     ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !149
  %i.kx = atomicrmw volatile add ptr %i.ku, i64 %i.kw seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.kv, align 8, !tbaa !149
  %i.ky = getelementptr i8, ptr %i.l, i64 232     ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kt, i64 48     ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !149
  %i.lb = atomicrmw volatile add ptr %i.ky, i64 %i.la seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.kz, align 8, !tbaa !149
  %i.lc = getelementptr i8, ptr %i.l, i64 384     ; 2 uses
  %i.ld = getelementptr i8, ptr %i.kt, i64 72     ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !149
  %i.lf = atomicrmw volatile add ptr %i.lc, i64 %i.le seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.ld, align 8, !tbaa !149
  %i.lg = getelementptr i8, ptr %i.l, i64 536     ; 2 uses
  %i.lh = getelementptr i8, ptr %i.kt, i64 96     ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !149
  %i.lj = atomicrmw volatile add ptr %i.lg, i64 %i.li seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.lh, align 8, !tbaa !149
  %i.lk = getelementptr i8, ptr %i.l, i64 688     ; 2 uses
  %i.ll = getelementptr i8, ptr %i.kt, i64 120    ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !149
  %i.ln = atomicrmw volatile add ptr %i.lk, i64 %i.lm seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.ll, align 8, !tbaa !149
  %i.lo = getelementptr i8, ptr %i.l, i64 144
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !111
  %.not.not.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.not.i.i.i, label %bb.di, label %has_sweeping_pages.exit.thread.i.i

bb.di:                                            ; preds = %rb_gc_get_ractor_newobj_cache.exit.i.i
  %i.lq = getelementptr i8, ptr %i.l, i64 296
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !111
  %.not.1.not.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.1.not.i.i.i, label %bb.dj, label %has_sweeping_pages.exit.thread.i.i

bb.dj:                                            ; preds = %bb.di
  %i.ls = getelementptr i8, ptr %i.l, i64 448
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !111
  %.not.2.not.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.2.not.i.i.i, label %bb.dk, label %has_sweeping_pages.exit.thread.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.lu = getelementptr i8, ptr %i.l, i64 600
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !111
  %.not.3.not.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not.3.not.i.i.i, label %has_sweeping_pages.exit.i.i, label %has_sweeping_pages.exit.thread.i.i

has_sweeping_pages.exit.i.i:                      ; preds = %bb.dk
  %i.lw = getelementptr i8, ptr %i.l, i64 752
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !111
  %.not.4.not.i.not.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.4.not.i.not.i.i, label %bb.dl, label %has_sweeping_pages.exit.thread.i.i

bb.dl:                                            ; preds = %has_sweeping_pages.exit.i.i
  %i.ly = getelementptr i8, ptr %i.l, i64 816
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !151
  %.not42.i.i = icmp ne i32 %i.lz, 0
  %i.ma = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i60.i.i = icmp eq ptr %i.ma, null
  %or.cond.i.i = select i1 %.not42.i.i, i1 true, i1 %.not.i.i60.i.i
  br i1 %or.cond.i.i, label %has_sweeping_pages.exit.thread.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mb = load i64, ptr %i.ku, align 8, !tbaa !152
  %i.mc = load i64, ptr %i.ky, align 8, !tbaa !152
  %i.md = load i64, ptr %i.lc, align 8, !tbaa !152
  %i.me = load i64, ptr %i.lg, align 8, !tbaa !152
  %i.mf = load i64, ptr %i.lk, align 8, !tbaa !152
  %i.mg = getelementptr i8, ptr %i.l, i64 88
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !153
  %i.mi = getelementptr i8, ptr %i.l, i64 240
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !153
  %i.mk = getelementptr i8, ptr %i.l, i64 392
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !153
  %i.mm = getelementptr i8, ptr %i.l, i64 544
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !153
  %i.mo = getelementptr i8, ptr %i.l, i64 696
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !153
  %i.mq = getelementptr i8, ptr %i.l, i64 96
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !154
  %i.ms = getelementptr i8, ptr %i.l, i64 248
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !154
  %i.mu = getelementptr i8, ptr %i.l, i64 400
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !154
  %i.mw = getelementptr i8, ptr %i.l, i64 552
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !154
  %i.my = getelementptr i8, ptr %i.l, i64 704
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !154
  %.neg2 = add i64 %i.mc, %i.mb
  %.neg4 = add i64 %.neg2, %i.md
  %.neg6 = add i64 %.neg4, %i.me
  %.neg8 = add i64 %.neg6, %i.mf
  %i.na = add i64 %i.mh, %i.mj
  %i.nb = add i64 %i.na, %i.ml
  %i.nc = add i64 %i.nb, %i.mn
  %i.nd = add i64 %i.nc, %i.mp
  %i.ne = add i64 %i.nd, %i.mr
  %i.nf = add i64 %i.ne, %i.mt
  %i.ng = add i64 %i.nf, %i.mv
  %i.nh = add i64 %i.ng, %i.mx
  %i.ni = add i64 %i.nh, %i.mz
  %i.nj = sub i64 %.neg8, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !116
  %.not43.i.i = icmp eq i64 %i.nj, %i.nl
  br i1 %.not43.i.i, label %has_sweeping_pages.exit.thread.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nm = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.nn = call fastcc i64 @total_final_slots_count(ptr noundef nonnull %i.l)
  %i.no = call fastcc i64 @total_freed_objects(ptr noundef nonnull %i.l)
  %i.np = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.nm, i32 noundef 1, ptr noundef nonnull @.str.66, i64 noundef %i.nn, i64 noundef %i.no) #46 ; 0 uses
  %i.nq = call fastcc i64 @objspace_live_slots(ptr noundef nonnull %i.l)
  %i.nr = load i64, ptr %i.nk, align 8, !tbaa !116
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.67, i64 noundef %i.nq, i64 noundef %i.nr) #61
  unreachable

has_sweeping_pages.exit.thread.i.i:               ; preds = %bb.dm, %bb.dl, %has_sweeping_pages.exit.i.i, %bb.dk, %bb.dj, %bb.di, %rb_gc_get_ractor_newobj_cache.exit.i.i
  %i.ns = load i16, ptr %i.o, align 4             ; 2 uses
  %i.nt = and i16 %i.ns, 3
  %i.nu = icmp eq i16 %i.nt, 1
  br i1 %i.nu, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %has_sweeping_pages.exit.thread.i.i
  %i.nv = getelementptr i8, ptr %i.l, i64 1176
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !155 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !122 ; 2 uses
  %.not44.i.i = icmp eq i64 %i.nw, %i.ny
  br i1 %.not44.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.68, i64 noundef %i.nw, i64 noundef %i.ny) #61
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.nz = getelementptr i8, ptr %i.l, i64 1160
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !156 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !123 ; 2 uses
  %.not45.i.i = icmp eq i64 %i.oa, %i.oc
  br i1 %.not45.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.69, i64 noundef %i.oa, i64 noundef %i.oc) #61
  unreachable

bb.ds:                                            ; preds = %bb.dq, %has_sweeping_pages.exit.thread.i.i
  %i.od = getelementptr i8, ptr %i.l, i64 816
end_hunk_0
begin_hunk_1_@newobj_cache_miss:bb.a

bb.ak:                                            ; preds = %bb.aj
  call void @rb_memerror() #62
  unreachable

bb.al:                                            ; preds = %bb.aj
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gc_continue(ptr noundef %0, ptr nofree noundef captures(address) %1) unnamed_addr #2 {
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
  %.not.i7.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.not.i, label %gc_marks_step.exit.i, label %bb.r

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
  %i.ah = add i64 %i.ag, %i.t
  %.neg31 = sub i64 %.neg30, %i.ah
  %i.ai = add i64 %.neg31, %i.v
  %i.aj = add i64 %i.ai, %i.x
  %i.ak = add i64 %i.aj, %i.z
  %i.al = add i64 %i.ak, %i.ab
  %i.am = add i64 %i.al, %i.ad
  ret i64 %i.am
}

declare i64 @rb_num2ull(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @get_envparam_size(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call ptr @getenv(ptr noundef %0) #46 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !214
  %.not31 = icmp eq i8 %i.c, 0
  br i1 %.not31, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.d = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #46 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !398  ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !214   ; 3 uses
  %switch.tableidx = add i8 %i.f, -71             ; 3 uses
  %i.g = icmp ult i8 %switch.tableidx, 39
  br i1 %i.g, label %switch.hole_check, label %bb.d

switch.hole_check:                                ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 347892351057, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %switch.hole_check
  %i.h = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.get_envparam_size, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.i = getelementptr i8, ptr %i.e, i64 1        ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !398
  %.pr = load i8, ptr %i.i, align 1, !tbaa !214
  br label %bb.d

bb.d:                                             ; preds = %switch.hole_check, %bb.c, %switch.lookup
  %i.j = phi i8 [ %.pr, %switch.lookup ], [ %i.f, %bb.c ], [ %i.f, %switch.hole_check ] ; 2 uses
  %.promoted = phi ptr [ %i.i, %switch.lookup ], [ %i.e, %bb.c ], [ %i.e, %switch.hole_check ]
  %i.k = phi i1 [ true, %switch.lookup ], [ false, %bb.c ], [ false, %switch.hole_check ]
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.c ], [ 0, %switch.hole_check ] ; 2 uses
  %.not3239 = icmp eq i8 %i.j, 0
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = tail call ptr @__ctype_b_loc() #73
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !607
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi i8 [ %i.j, %.lr.ph ], [ %i.u, %bb.f ]
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.t, %bb.f ]
  %i.p = zext i8 %i.n to i64
  %i.q = getelementptr [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !276
  %i.s = and i16 %i.r, 8192
  %.not33 = icmp eq i16 %i.s, 0
  br i1 %.not33, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.o, i64 1        ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !398
  %i.u = load i8, ptr %i.t, align 1, !tbaa !214   ; 2 uses
  %.not32 = icmp eq i8 %i.u, 0
  br i1 %.not32, label %._crit_edge, label %bb.e, !llvm.loop !608

.critedge:                                        ; preds = %bb.e
  %i.v = call ptr @rb_ruby_verbose_ptr() #46
  %i.w = load i64, ptr %i.v, align 8, !tbaa !59
  %i.x = and i64 %i.w, -5
  %.not35 = icmp eq i64 %i.x, 0
  br i1 %.not35, label %bb.r, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.z = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.y, i32 noundef 1, ptr noundef nonnull @.str.253, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %bb.r

._crit_edge:                                      ; preds = %bb.f, %bb.d
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %i.aa = call range(i64 10, 65) i64 @llvm.cttz.i64(i64 %.0, i1 true)
  %i.ab = lshr i64 9223372036854775807, %i.aa     ; 2 uses
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = icmp slt i64 %i.d, %i.ac
  %i.ae = icmp slt i64 %i.ab, %i.d
  %or.cond = or i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = call ptr @rb_ruby_verbose_ptr() #46
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !59
  %i.ah = and i64 %i.ag, -5
  %.not38 = icmp eq i64 %i.ah, 0
  br i1 %.not38, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.aj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 1, ptr noundef nonnull @.str.254, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ak = mul i64 %.0, %i.d
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.027 = phi i64 [ %i.ak, %bb.k ], [ %i.d, %._crit_edge ] ; 4 uses
  %i.al = icmp sgt i64 %.027, 0
  %i.am = call ptr @rb_ruby_verbose_ptr() #46
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59
  %i.ao = and i64 %i.an, -5
  %.not37 = icmp eq i64 %i.ao, 0                  ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.aq = load i64, ptr %1, align 8, !tbaa !59
  %i.ar = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ap, i32 noundef 1, ptr noundef nonnull @.str.255, ptr noundef %0, i64 noundef %.027, i64 noundef %i.aq) #46 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 %.027, ptr %1, align 8, !tbaa !59
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  br i1 %.not37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.at = load i64, ptr %1, align 8, !tbaa !59
  %i.au = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull @.str.256, ptr noundef %0, i64 noundef %.027, i64 noundef %i.at, i64 noundef 0) #46 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.i, %bb.j, %.critedge, %bb.g, %bb.o
  %.028 = phi i32 [ 0, %bb.i ], [ 0, %.critedge ], [ 1, %bb.o ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.b, %bb.r
  %.1 = phi i32 [ %.028, %bb.r ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @get_envparam_double(ptr noundef %0, ptr nofree noundef captures(none) %1, double noundef %2, double noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
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
  %5 = icmp ne i32 %4, 0
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
define internal void @gc_mark_classext_module(ptr nofree noundef readonly captures(none) %0, i1 zeroext %1, i64 %2, ptr nofree noundef readonly captures(none) %3) #2 {
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
