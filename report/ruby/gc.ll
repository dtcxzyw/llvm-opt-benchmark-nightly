inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_verify_internal_consistency:bb.a
  %i.gf = and i64 %.fr120.i.i.i, 128
  %.not65.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not65.i.i.i, label %RB_FL_TEST.exit96.thread.i.i.i, label %bb.ap

RB_FL_TEST.exit96.thread.i.i.i:                   ; preds = %RB_FL_TEST.exit96.i.i.i, %bb.ao
  br label %bb.ap

bb.ap:                                            ; preds = %RB_FL_TEST.exit96.thread.i.i.i, %RB_FL_TEST.exit96.i.i.i
  %i.gg = phi ptr [ @.str.74, %RB_FL_TEST.exit96.thread.i.i.i ], [ @.str.73, %RB_FL_TEST.exit96.i.i.i ]
  %i.gh = load ptr, ptr %i.bb, align 8, !tbaa !130
  %i.gi = call i32 @rb_st_lookup(ptr noundef %i.gh, i64 noundef %.055123.i.i.i, ptr noundef null) #47
  %.not66.i.i.i = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not66.i.i.i, ptr @.str.76, ptr @.str.75
  br i1 %i.bo, label %bb.aq, label %rb_type.exit.i98.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.gk = icmp ult i64 %i.bp, 10
  %switch.maskindex99 = trunc i64 %i.bp to i16
  %switch.shifted100 = lshr i16 547, %switch.maskindex99
  %switch.lobit101 = trunc i16 %switch.shifted100 to i1
  %or.cond104 = select i1 %i.gk, i1 %switch.lobit101, i1 false
  br i1 %or.cond104, label %switch.lookup98, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.bq, label %rb_type.exit.thread13.i105.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.bs, label %rb_type.exit.thread11.i106.i.i.i, label %rb_type.exit.thread.i110.i.i.i

rb_type.exit.i98.i.i.i:                           ; preds = %bb.ap
  %i.gl = load i64, ptr %i.bd, align 8, !tbaa !109 ; 2 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = and i32 %i.gm, 31
  switch i32 %i.gn, label %bb.bl [
    i32 0, label %obj_type_name.exit111.i.i.i
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
    i32 4, label %rb_type.exit.thread.i110.i.i.i
    i32 5, label %bb.aw
    i32 6, label %bb.ax
    i32 7, label %bb.ay
    i32 8, label %bb.az
    i32 9, label %bb.ba
    i32 10, label %bb.bb
    i32 11, label %bb.bc
    i32 13, label %bb.bd
    i32 14, label %bb.be
    i32 15, label %bb.bf
    i32 17, label %rb_type.exit.thread5.i109.i.i.i
    i32 18, label %rb_type.exit.thread7.i108.i.i.i
    i32 19, label %rb_type.exit.thread9.i107.i.i.i
    i32 20, label %rb_type.exit.thread11.i106.i.i.i
    i32 21, label %rb_type.exit.thread13.i105.i.i.i
    i32 22, label %rb_type.exit.thread15.i104.i.i.i
    i32 26, label %bb.bg
    i32 28, label %bb.bh
    i32 30, label %bb.bi
    i32 29, label %bb.bj
    i32 12, label %bb.bk
  ]

bb.at:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.au:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.av:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread.i110.i.i.i:                   ; preds = %rb_type.exit.i98.i.i.i, %bb.as
  br label %obj_type_name.exit111.i.i.i

bb.aw:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.ax:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.ay:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.az:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.ba:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bb:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bc:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bd:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.be:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bf:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread5.i109.i.i.i:                  ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread7.i108.i.i.i:                  ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread9.i107.i.i.i:                  ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread11.i106.i.i.i:                 ; preds = %rb_type.exit.i98.i.i.i, %bb.as
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread13.i105.i.i.i:                 ; preds = %rb_type.exit.i98.i.i.i, %bb.ar
  br label %obj_type_name.exit111.i.i.i

rb_type.exit.thread15.i104.i.i.i:                 ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bg:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bh:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bi:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bj:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

bb.bk:                                            ; preds = %rb_type.exit.i98.i.i.i
  %i.go = and i64 %i.gl, 64
  %.not.i.i.i99.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i99.i.i.i, label %obj_type_name.exit111.i.i.i, label %rb_objspace_data_type_name.exit.i.i100.i.i.i

rb_objspace_data_type_name.exit.i.i100.i.i.i:     ; preds = %bb.bk
  %i.gp = load i64, ptr %i.bv, align 8, !tbaa !131
  %i.gq = and i64 %i.gp, -2
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !133 ; 2 uses
  %.not5.i.i101.i.i.i = icmp eq ptr %i.gs, null
  %spec.select.i2.i102.i.i.i = select i1 %.not5.i.i101.i.i.i, ptr @.str.303, ptr %i.gs
  br label %obj_type_name.exit111.i.i.i

bb.bl:                                            ; preds = %rb_type.exit.i98.i.i.i
  br label %obj_type_name.exit111.i.i.i

switch.lookup98:                                  ; preds = %bb.aq
  %switch.gep102 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.obj_type_name, i64 %i.bp
  %switch.load103 = load ptr, ptr %switch.gep102, align 8
  br label %obj_type_name.exit111.i.i.i

obj_type_name.exit111.i.i.i:                      ; preds = %switch.lookup98, %bb.bl, %rb_objspace_data_type_name.exit.i.i100.i.i.i, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %rb_type.exit.thread15.i104.i.i.i, %rb_type.exit.thread13.i105.i.i.i, %rb_type.exit.thread11.i106.i.i.i, %rb_type.exit.thread9.i107.i.i.i, %rb_type.exit.thread7.i108.i.i.i, %rb_type.exit.thread5.i109.i.i.i, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %rb_type.exit.thread.i110.i.i.i, %bb.av, %bb.au, %bb.at, %rb_type.exit.i98.i.i.i
  %.0.i3.i103.i.i.i = phi ptr [ @.str.304, %bb.bl ], [ @.str.278, %rb_type.exit.i98.i.i.i ], [ @.str.279, %bb.at ], [ @.str.280, %bb.au ], [ @.str.281, %bb.av ], [ @.str.282, %rb_type.exit.thread.i110.i.i.i ], [ @.str.283, %bb.aw ], [ @.str.284, %bb.ax ], [ @.str.285, %bb.ay ], [ @.str.286, %bb.az ], [ @.str.287, %bb.ba ], [ @.str.288, %bb.bb ], [ @.str.289, %bb.bc ], [ @.str.290, %bb.bd ], [ @.str.291, %bb.be ], [ @.str.292, %bb.bf ], [ @.str.293, %rb_type.exit.thread5.i109.i.i.i ], [ @.str.294, %rb_type.exit.thread7.i108.i.i.i ], [ @.str.295, %rb_type.exit.thread9.i107.i.i.i ], [ @.str.296, %rb_type.exit.thread11.i106.i.i.i ], [ @.str.297, %rb_type.exit.thread13.i105.i.i.i ], [ @.str.298, %rb_type.exit.thread15.i104.i.i.i ], [ @.str.299, %bb.bg ], [ @.str.300, %bb.bh ], [ @.str.301, %bb.bi ], [ @.str.302, %bb.bj ], [ @.str.303, %bb.bk ], [ %spec.select.i2.i102.i.i.i, %rb_objspace_data_type_name.exit.i.i100.i.i.i ], [ %switch.load103, %switch.lookup98 ]
  %i.gt = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.gd, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gj, ptr noundef nonnull %.0.i3.i103.i.i.i) #47 ; 0 uses
  %i.gu = load i32, ptr %i.s, align 8, !tbaa !98
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.s, align 8, !tbaa !98
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
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.65) #63
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
  br i1 %.not20.i.i.i.i, label %bb.cf, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !128
  switch i32 %i.he, label %switch.lookup106.a [
    i32 12, label %bb.ce
    i32 1, label %obj_type_name.exit.i.i.i.i
    i32 2, label %bb.bo
    i32 3, label %bb.bp
    i32 4, label %rb_type.exit.thread.i.i.i.i.i
    i32 5, label %bb.bq
    i32 6, label %bb.br
    i32 7, label %bb.bs
    i32 8, label %bb.bt
    i32 9, label %bb.bu
    i32 10, label %bb.bv
    i32 11, label %bb.bw
    i32 13, label %bb.bx
    i32 14, label %bb.by
    i32 15, label %bb.bz
    i32 17, label %rb_type.exit.thread5.i.i.i.i.i
    i32 18, label %rb_type.exit.thread7.i.i.i.i.i
    i32 19, label %rb_type.exit.thread9.i.i.i.i.i
    i32 20, label %rb_type.exit.thread11.i.i.i.i.i
    i32 21, label %rb_type.exit.thread13.i.i.i.i.i
    i32 22, label %rb_type.exit.thread15.i.i.i.i.i
    i32 26, label %bb.ca
    i32 28, label %bb.cb
    i32 30, label %bb.cc
    i32 29, label %bb.cd
  ]

bb.bo:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread.i.i.i.i.i:                    ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bq:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.br:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bs:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bu:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bx:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread5.i.i.i.i.i:                   ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread7.i.i.i.i.i:                   ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread9.i.i.i.i.i:                   ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread11.i.i.i.i.i:                  ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread13.i.i.i.i.i:                  ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

rb_type.exit.thread15.i.i.i.i.i:                  ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.cc:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.cd:                                            ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

bb.ce:                                            ; preds = %bb.bn
  %i.hg = and i64 %i.hc, 64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %obj_type_name.exit.i.i.i.i, label %rb_objspace_data_type_name.exit.i.i.i.i.i.i

rb_objspace_data_type_name.exit.i.i.i.i.i.i:      ; preds = %bb.ce
  %i.hh = getelementptr i8, ptr %.01866.i.i.i.i, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !131
  %i.hj = and i64 %i.hi, -2
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !133 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  %spec.select.i2.i.i.i.i.i = select i1 %.not5.i.i.i.i.i.i, ptr @.str.303, ptr %i.hl
  br label %obj_type_name.exit.i.i.i.i

switch.lookup106.a:                               ; preds = %bb.bn
  br label %obj_type_name.exit.i.i.i.i

obj_type_name.exit.i.i.i.i:                       ; preds = %switch.lookup106.a, %rb_objspace_data_type_name.exit.i.i.i.i.i.i, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %rb_type.exit.thread15.i.i.i.i.i, %rb_type.exit.thread13.i.i.i.i.i, %rb_type.exit.thread11.i.i.i.i.i, %rb_type.exit.thread9.i.i.i.i.i, %rb_type.exit.thread7.i.i.i.i.i, %rb_type.exit.thread5.i.i.i.i.i, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %rb_type.exit.thread.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bn
  %.0.i3.i.i.i.i.i = phi ptr [ @.str.304, %switch.lookup106.a ], [ %spec.select.i2.i.i.i.i.i, %rb_objspace_data_type_name.exit.i.i.i.i.i.i ], [ @.str.303, %bb.ce ], [ @.str.280, %bb.bo ], [ @.str.281, %bb.bp ], [ @.str.282, %rb_type.exit.thread.i.i.i.i.i ], [ @.str.283, %bb.bq ], [ @.str.284, %bb.br ], [ @.str.285, %bb.bs ], [ @.str.286, %bb.bt ], [ @.str.287, %bb.bu ], [ @.str.288, %bb.bv ], [ @.str.289, %bb.bw ], [ @.str.290, %bb.bx ], [ @.str.291, %bb.by ], [ @.str.292, %bb.bz ], [ @.str.293, %rb_type.exit.thread5.i.i.i.i.i ], [ @.str.294, %rb_type.exit.thread7.i.i.i.i.i ], [ @.str.295, %rb_type.exit.thread9.i.i.i.i.i ], [ @.str.296, %rb_type.exit.thread11.i.i.i.i.i ], [ @.str.297, %rb_type.exit.thread13.i.i.i.i.i ], [ @.str.298, %rb_type.exit.thread15.i.i.i.i.i ], [ @.str.299, %bb.ca ], [ @.str.300, %bb.cb ], [ @.str.301, %bb.cc ], [ @.str.302, %bb.cd ], [ @.str.279, %bb.bn ]
  %i.hm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hf, i32 noundef 1, ptr noundef nonnull @.str.93, ptr noundef nonnull %.0.i3.i.i.i.i.i) #47 ; 0 uses
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
  %.0157.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi102.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
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
  %.not82.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i.i, 0
  %..060156163.i.i.i.i.i = select i1 %.not83.i.i.i.i.i, i32 1, i32 %.060156.i.i.i.i.i
  %.0157..i.i.i.i.i = select i1 %.not82.i.i.i.i.i, i32 %.0157.i.i.i.i.i, i32 1
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
  %.us-phi102.i.i.i.i.i = phi i32 [ %.0157.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %.0157..i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
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
  %switch.maskindex115 = trunc i64 %i.jr to i16
  %switch.shifted116 = lshr i16 547, %switch.maskindex115
  %switch.lobit117 = trunc i16 %switch.shifted116 to i1
  %or.cond120 = select i1 %i.js, i1 %switch.lobit117, i1 false
  br i1 %or.cond120, label %switch.lookup114, label %bb.cj

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
end_hunk_0
begin_hunk_1_@gc_mark_maybe_internal:bb.a
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59 ; 2 uses
  %i.bm = and i64 %i.bl, %i.bb
  %.not10.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not10.i.i.i, label %bb.n, label %gc_mark_and_pin.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !288
  %i.bp = add i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bn, align 8, !tbaa !288
  %i.bq = or i64 %i.bl, %i.bb
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !59
  br label %gc_mark_and_pin.exit.i

gc_mark_and_pin.exit.i:                           ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.g, i64 noundef %0)
  br label %rb_gc_impl_mark_maybe.exit

bb.o:                                             ; preds = %bb.b
  %i.br = tail call fastcc zeroext i1 @rb_gc_impl_pointer_to_heap_p(ptr noundef %i.g, ptr noundef %i.k)
  br i1 %i.br, label %bb.p, label %rb_gc_impl_mark_maybe.exit

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call fastcc zeroext i1 @rb_gc_impl_garbage_object_p(ptr noundef %i.g, i64 noundef %0)
  br i1 %i.bs, label %rb_gc_impl_mark_maybe.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.h, align 8, !tbaa !118
  %i.bt = getelementptr i8, ptr %i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !121
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !119
  tail call void %i.bu(i64 noundef %0, ptr noundef %i.bv) #47
  store ptr %i.i, ptr %i.h, align 8, !tbaa !118
  br label %rb_gc_impl_mark_maybe.exit

rb_gc_impl_mark_maybe.exit:                       ; preds = %bb.h, %gc_mark_and_pin.exit.i, %.preheader.i, %.preheader.i, %is_pointer_to_heap.exit.i, %bb.j, %bb.i, %heap_page_for_ptr.exit.i.i, %rb_darray_size.exit.i.i.i, %bb.e, %bb.d, %bb.c, %bb.q, %bb.p, %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_mark_weak(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !59     ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_gc_impl_mark_weak.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %rb_gc_impl_mark_weak.exit, !prof !189

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 1248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 6 uses
  %i.n = inttoptr i64 %i.c to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109  ; 2 uses
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %gc_mark_check_t_none.exit.i, !prof !60

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.r = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %i.c) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  %i.s = getelementptr i8, ptr %i.m, i64 1136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !290
  %i.u = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.b, i64 noundef 256, i64 noundef %i.t) ; 0 uses
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.112, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #63
  unreachable

gc_mark_check_t_none.exit.i:                      ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.m, i64 28
  %i.w = load i16, ptr %i.v, align 4
  %i.x = and i16 %i.w, 1024
  %i.y = icmp eq i16 %i.x, 0
  %i.z = and i64 %i.o, 32
  %.not.i = icmp eq i64 %i.z, 0                   ; 2 uses
  %or.cond14.i = or i1 %.not.i, %i.y
  br i1 %or.cond14.i, label %bb.e, label %rb_gc_impl_mark_weak.exit

bb.e:                                             ; preds = %gc_mark_check_t_none.exit.i
  %i.aa = getelementptr i8, ptr %i.m, i64 1128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !291, !range !203, !noundef !29
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %rgengc_check_relation.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = and i64 %i.c, -65536
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 65536, !tbaa !113
  %i.ag = getelementptr i8, ptr %i.af, i64 72
  %.lhs.trunc.i.i.i = trunc i64 %i.c to i16       ; 2 uses
  %i.ah = udiv i16 %.lhs.trunc.i.i.i, 40
  %i.ai = udiv i16 %.lhs.trunc.i.i.i, 2560
  %.zext2.i.i.i = zext nneg i16 %i.ai to i64
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %.zext2.i.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59
  %i.al = and i16 %i.ah, 63
  %i.am = zext nneg i16 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.ak, %i.an
  %.not.i.i = icmp ne i64 %i.ao, 0
  %or.cond.i = or i1 %.not.i, %.not.i.i
  br i1 %or.cond.i, label %bb.g, label %rgengc_check_relation.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.m, i64 1136
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !290 ; 2 uses
  %i.ar = and i64 %i.aq, -65536
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 65536, !tbaa !113 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 904
  %.lhs.trunc.i.i.i.i = trunc i64 %i.aq to i16    ; 2 uses
  %i.av = udiv i16 %.lhs.trunc.i.i.i.i, 40
  %i.aw = udiv i16 %.lhs.trunc.i.i.i.i, 2560
  %.zext2.i.i.i.i = zext nneg i16 %i.aw to i64
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %.zext2.i.i.i.i ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.az = and i16 %i.av, 63
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba                    ; 2 uses
  %i.bc = and i64 %i.bb, %i.ay
  %.not.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %rgengc_check_relation.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr i8, ptr %i.at, i64 12     ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = or i8 %i.be, 2
  store i8 %i.bf, ptr %i.bd, align 4
  %i.bg = or i64 %i.bb, %i.ay
  store i64 %i.bg, ptr %i.ax, align 8, !tbaa !59
  br label %rgengc_check_relation.exit.i

rgengc_check_relation.exit.i:                     ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.bh = getelementptr i8, ptr %i.m, i64 2224    ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !167 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null           ; 2 uses
  br i1 %.not.i.i.i, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %rb_darray_size.exit.i.i

rb_darray_size.exit.i.i:                          ; preds = %rgengc_check_relation.exit.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !292
  %.fr.i.i = freeze i64 %i.bk                     ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !96 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %.fr.i.i
  br i1 %i.bm, label %rb_darray_ensure_space.exit.i, label %bb.i

bb.i:                                             ; preds = %rb_darray_size.exit.i.i
  %i.bn = icmp eq i64 %.fr.i.i, 0
  %i.bo = shl i64 %.fr.i.i, 1                     ; 3 uses
  br i1 %i.bn, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp ugt i64 %i.bo, 2305843009213693951
  br i1 %i.bp, label %bb.k, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, !prof !293

bb.k:                                             ; preds = %bb.j
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.bo, i64 noundef 8) #65
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.i.i:            ; preds = %rgengc_check_relation.exit.i, %bb.i, %bb.j
  %i.bq = phi i64 [ %i.bo, %bb.j ], [ 1, %bb.i ], [ 1, %rgengc_check_relation.exit.i ] ; 2 uses
  %i.br = shl nuw i64 %i.bq, 3                    ; 2 uses
  %i.bs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.br, i64 16) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.l, label %rbimpl_size_add_or_raise.exit.i.i.i.i, !prof !60

bb.l:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i.i
  tail call void @ruby_malloc_add_size_overflow(i64 noundef %i.br, i64 noundef 16) #65
  unreachable

rbimpl_size_add_or_raise.exit.i.i.i.i:            ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i.i
  %i.bu = extractvalue { i64, i1 } %i.bs, 0
  %i.bv = tail call ptr @realloc(ptr noundef %i.bi, i64 noundef %i.bu) #71 ; 6 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %rb_darray_realloc_mul_add_without_gc.exit.i.i.i

bb.m:                                             ; preds = %rbimpl_size_add_or_raise.exit.i.i.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.119) #63
  unreachable

rb_darray_realloc_mul_add_without_gc.exit.i.i.i:  ; preds = %rbimpl_size_add_or_raise.exit.i.i.i.i
  br i1 %.not.i.i.i, label %bb.n, label %rb_darray_resize_capa_impl.exit.i.i

bb.n:                                             ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i.i
  store i64 0, ptr %i.bv, align 8, !tbaa !96
  br label %rb_darray_resize_capa_impl.exit.i.i

rb_darray_resize_capa_impl.exit.i.i:              ; preds = %bb.n, %rb_darray_realloc_mul_add_without_gc.exit.i.i.i
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  store i64 %i.bq, ptr %i.bx, align 8, !tbaa !292
  %i.by = ptrtoint ptr %i.bv to i64
  store i64 %i.by, ptr %i.bh, align 8
  %.pre15.i = load i64, ptr %i.bv, align 8, !tbaa !96
  br label %rb_darray_ensure_space.exit.i

rb_darray_ensure_space.exit.i:                    ; preds = %rb_darray_resize_capa_impl.exit.i.i, %rb_darray_size.exit.i.i
  %i.bz = phi i64 [ %i.bl, %rb_darray_size.exit.i.i ], [ %.pre15.i, %rb_darray_resize_capa_impl.exit.i.i ] ; 2 uses
  %i.ca = phi ptr [ %i.bi, %rb_darray_size.exit.i.i ], [ %i.bv, %rb_darray_resize_capa_impl.exit.i.i ] ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %0, ptr %i.cc, align 8, !tbaa !216
  %i.cd = add i64 %i.bz, 1
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !96
  %i.ce = getelementptr i8, ptr %i.m, i64 1104    ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !294
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !294
  br label %rb_gc_impl_mark_weak.exit

rb_gc_impl_mark_weak.exit:                        ; preds = %rb_darray_ensure_space.exit.i, %gc_mark_check_t_none.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_gc_remove_weak(i64 noundef %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %i.e = load i16, ptr %i.d, align 4
  %i.f = and i16 %i.e, 2048
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %rb_gc_impl_remove_weak.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, -65536
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 65536, !tbaa !113
  %i.j = getelementptr i8, ptr %i.i, i64 280
  %.lhs.trunc.i.i = trunc i64 %0 to i16           ; 2 uses
  %i.k = udiv i16 %.lhs.trunc.i.i, 40
  %i.l = udiv i16 %.lhs.trunc.i.i, 2560
  %.zext2.i.i = zext nneg i16 %i.l to i64
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %.zext2.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59
  %i.o = and i16 %i.k, 63
  %i.p = zext nneg i16 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.n, %i.q
  %.not12.i = icmp eq i64 %i.r, 0
  br i1 %.not12.i, label %rb_gc_impl_remove_weak.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.c, i64 2224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !188  ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %rb_gc_impl_remove_weak.exit, label %rb_darray_size.exit.lr.ph.i

rb_darray_size.exit.lr.ph.i:                      ; preds = %.preheader.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.not17.i = icmp eq i64 %i.u, 0
  br i1 %.not17.i, label %rb_gc_impl_remove_weak.exit, label %.lr.ph.i

rb_darray_size.exit.i:                            ; preds = %bb.c
  %i.w = add nuw i64 %.01416.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.u
  br i1 %exitcond.not.i, label %rb_gc_impl_remove_weak.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_darray_size.exit.lr.ph.i, %rb_darray_size.exit.i
  %.01416.i = phi i64 [ %i.w, %rb_darray_size.exit.i ], [ 0, %rb_darray_size.exit.lr.ph.i ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %.01416.i ; 3 uses
  %.not13.i = icmp eq ptr %i.x, null
  br i1 %.not13.i, label %rb_gc_impl_remove_weak.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !216
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %.split.i, label %rb_darray_size.exit.i

.split.i:                                         ; preds = %bb.c
  store ptr null, ptr %i.x, align 8, !tbaa !216
  br label %rb_gc_impl_remove_weak.exit

rb_gc_impl_remove_weak.exit:                      ; preds = %rb_darray_size.exit.i, %.lr.ph.i, %bb.a, %bb.b, %.preheader.i, %rb_darray_size.exit.lr.ph.i, %.split.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_mark_locations(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp ugt ptr %1, %0
  br i1 %.not.i, label %bb.b, label %each_location_ptr.exit

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  tail call fastcc void @each_location(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef nonnull @gc_mark_maybe_each_location)
  br label %each_location_ptr.exit

each_location_ptr.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gc_mark_maybe_each_location(i64 noundef %0, ptr readnone captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gc_mark_maybe_internal(i64 noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_mark_values(i64 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %gc_mark_internal.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %gc_mark_internal.exit
  %.04 = phi i64 [ %i.q, %gc_mark_internal.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %1, i64 %.04
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59   ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %gc_mark_internal.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1256     ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !189

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 1248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  tail call fastcc void @gc_mark(ptr noundef %i.m, i64 noundef %i.c)
  br label %gc_mark_internal.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.i, align 8, !tbaa !118
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !119
  tail call void %i.o(i64 noundef %i.c, ptr noundef %i.p) #47, !inline_history !285
  store ptr %i.j, ptr %i.i, align 8, !tbaa !118
  br label %gc_mark_internal.exit

gc_mark_internal.exit:                            ; preds = %.lr.ph, %bb.c, %bb.d
  %i.q = add nuw nsw i64 %.04, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_mark_vm_stack_values(i64 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %gc_mark_and_pin_internal.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %gc_mark_and_pin_internal.exit
  %.04 = phi i64 [ %i.aj, %gc_mark_and_pin_internal.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %1, i64 %.04
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59   ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %gc_mark_and_pin_internal.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1256     ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.g, !prof !189

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 1248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 28
  %.val.i.i.i = load i16, ptr %i.n, align 4       ; 2 uses
  %i.o = and i16 %.val.i.i.i, 64
  %.not.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i, label %rb_gc_impl_mark_and_pin.exit.i, label %bb.d, !prof !189

bb.d:                                             ; preds = %bb.c
  %i.p = and i16 %.val.i.i.i, 32
  %.not9.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not9.i.i.i.i, label %rb_gc_impl_mark_and_pin.exit.i, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@rb_gc_prepare_heap:bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 336      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !330
  %i.h = add i64 %i.g, %i.e
  %i.i = getelementptr i8, ptr %i.c, i64 488      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !330
  %i.k = add i64 %i.h, %i.j
  %i.l = getelementptr i8, ptr %i.c, i64 640      ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !330
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr i8, ptr %i.c, i64 792      ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  %i.r = getelementptr i8, ptr %i.c, i64 920      ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !331  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #47
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @gc_set_candidate_object_i, ptr %i.u, align 8, !tbaa !326
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.v, align 8, !tbaa !327
  %i.w = getelementptr i8, ptr %i.c, i64 28       ; 3 uses
  %i.x = load i16, ptr %i.w, align 4
  tail call fastcc void @gc_rest(ptr noundef %i.c)
  %i.y = load i16, ptr %i.w, align 4
  %i.z = or i16 %i.y, 16
  store i16 %i.z, ptr %i.w, align 4
  %i.aa = and i16 %i.x, 16
  %.not.i.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = zext i1 %.not.i.i.i.i to i8
  store i8 %i.ab, ptr %i.t, align 8, !tbaa !328
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = ptrtoint ptr %0 to i64                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i8 0, i64 80, i1 false)
  %i.ae = call i64 @rb_ensure(ptr noundef nonnull @objspace_each_objects_try, i64 noundef %i.ad, ptr noundef nonnull @objspace_each_objects_ensure, i64 noundef %i.ad) #47 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #47
  %i.af = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  call fastcc void @rb_gc_impl_start(ptr noundef %i.c, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  store double %i.af, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  store i64 0, ptr %i.r, align 8, !tbaa !331
  %i.ag = getelementptr i8, ptr %i.c, i64 800
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !333
  %i.ai = getelementptr i8, ptr %i.c, i64 912
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !334
  call fastcc void @heap_pages_free_unused_pages(ptr noundef %i.c)
  store i64 %i.s, ptr %i.r, align 8, !tbaa !331
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !330
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !330
  %i.al = add i64 %i.ak, %i.aj
  %i.am = load i64, ptr %i.i, align 8, !tbaa !330
  %i.an = add i64 %i.al, %i.am
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !330
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !330
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp ugt i64 %i.q, %i.ar
  br i1 %i.as, label %bb.b, label %rb_gc_impl_prepare_heap.exit

bb.b:                                             ; preds = %bb.a
  %i.at = add i64 %i.s, %i.q
  %i.au = sub i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.r, align 8, !tbaa !331
  br label %rb_gc_impl_prepare_heap.exit

rb_gc_impl_prepare_heap.exit:                     ; preds = %bb.a, %bb.b
  %i.av = call i32 @malloc_trim(i64 noundef 0) #47 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 5) i64 @rb_gc_heap_id_for_size(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %0, 39
  %i.b = udiv i64 %i.a, 40
  %i.c = add nsw i64 %i.b, -1                     ; 2 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  %i.e = sub nuw nsw i64 64, %i.d                 ; 2 uses
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %rb_gc_impl_heap_id_for_size.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.105, i64 noundef %0, i64 noundef %i.e) #63
  unreachable

rb_gc_impl_heap_id_for_size.exit:                 ; preds = %bb.a
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_gc_start() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %rb_gc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  tail call fastcc void @rb_gc_impl_start(ptr noundef %i.c, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %rb_gc.exit

rb_gc.exit:                                       ; preds = %bb.a, %bb.b
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  tail call fastcc void @rb_gc_impl_start(ptr noundef %i.c, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_impl_start(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !158, !range !203, !noundef !29
  store i8 1, ptr %i.e, align 8, !tbaa !158
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = select i1 %1, i32 107520, i32 41984 ; 2 uses
  %i.g = and i32 %spec.select, 74752
  %.1 = select i1 %2, i32 %spec.select, i32 %i.g  ; 2 uses
  %i.h = and i32 %.1, 99328
  %spec.select15 = select i1 %3, i32 %.1, i32 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.2 = phi i32 [ 238592, %bb.a ], [ %spec.select15, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.d, label %rb_gc_vm_lock.exit.i

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.d) #47, !inline_history !335
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ 0, %bb.c ], [ %.pre.i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #47
  call fastcc void @gc_rest(ptr noundef nonnull %0), !inline_history !335
  call fastcc void @gc_start(ptr noundef nonnull %0, i32 noundef %.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %i.c, align 4, !tbaa !7
  %i.k = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i4.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4.i, label %bb.e, label %garbage_collect.exit

bb.e:                                             ; preds = %rb_gc_vm_lock.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #47, !inline_history !335
  br label %garbage_collect.exit

garbage_collect.exit:                             ; preds = %rb_gc_vm_lock.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr i8, ptr %0, i64 816        ; 2 uses
  %i.m = atomicrmw volatile xchg ptr %i.l, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %gc_finalize_deferred.exit

bb.f:                                             ; preds = %garbage_collect.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  store volatile ptr %i.o, ptr %i.b, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 36 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !223
  %i.r = or i32 %i.q, 2
  store i32 %i.r, ptr %i.p, align 4, !tbaa !223
  call fastcc void @finalize_deferred_heap_pages(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !14
  store volatile ptr %i.s, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i1.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i1.i.i, i64 36 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !223
  %i.v = and i32 %i.u, -3
  store i32 %i.v, ptr %i.t, align 4, !tbaa !223
  store atomic volatile i32 0, ptr %i.l seq_cst, align 8
  br label %gc_finalize_deferred.exit

gc_finalize_deferred.exit:                        ; preds = %garbage_collect.exit, %bb.f
  store i8 %i.f, ptr %i.e, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_during_gc() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %.val = load i16, ptr %i.d, align 4
  %i.e = lshr i16 %.val, 5
  %.lobit = and i16 %i.e, 1
  %i.f = zext nneg i16 %.lobit to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @rb_gc_count() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr i8, ptr %i.c, i64 1048
  %.val = load i64, ptr %i.d, align 8, !tbaa !336
  ret i64 %.val
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_gc_latest_gc_info(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !109
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 20
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.k = inttoptr i64 %0 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 8
  br i1 %i.n, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.o = load i64, ptr @rb_eTypeError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.8) #60
  unreachable

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit, %RB_SYMBOL_P.exit
  %i.p = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.q = getelementptr i8, ptr %i.p, i64 1248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = tail call fastcc i64 @gc_info_decode(ptr noundef readonly %i.r, i64 noundef %0, i32 noundef 0) ; 2 uses
  %i.t = icmp eq i64 %i.s, 36
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.v = tail call i64 @rb_sym2str(i64 noundef %0) #47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.9, i64 noundef %i.v) #60
  unreachable

bb.d:                                             ; preds = %RB_SYMBOL_P.exit.thread
  ret i64 %i.s
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_gc_stat(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c                         ; 2 uses
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !109
  %i.g = and i64 %i.f, 31
  switch i64 %i.g, label %RB_SYMBOL_P.exit.thread13 [
    i64 8, label %RB_SYMBOL_P.exit.thread
    i64 20, label %RB_SYMBOL_P.exit.thread
  ]

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a
  %i.h = and i64 %0, 255
  %i.i = icmp eq i64 %i.h, 12
  br i1 %i.i, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread13

RB_SYMBOL_P.exit.thread13:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.j = load i64, ptr @rb_eTypeError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.8) #60
  unreachable

RB_SYMBOL_P.exit.thread:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.k = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.l = getelementptr i8, ptr %i.k, i64 1248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = tail call fastcc i64 @rb_gc_impl_stat(ptr noundef %i.m, i64 noundef %0) ; 4 uses
  %i.o = icmp eq i64 %i.n, 36
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.q = tail call i64 @rb_sym2str(i64 noundef %0) #47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.9, i64 noundef %i.q) #60
  unreachable

bb.c:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.r = and i64 %0, 255
  %i.s = icmp eq i64 %i.r, 12
  br i1 %i.s, label %RB_SYMBOL_P.exit9.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %rb_num2ull_inline.exit, label %RB_SYMBOL_P.exit9

RB_SYMBOL_P.exit9:                                ; preds = %bb.d
  %i.t = inttoptr i64 %0 to ptr
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109
  %i.v = and i64 %i.u, 31
  %i.w = icmp eq i64 %i.v, 20
  br i1 %i.w, label %RB_SYMBOL_P.exit9.thread, label %rb_num2ull_inline.exit

RB_SYMBOL_P.exit9.thread:                         ; preds = %bb.c, %RB_SYMBOL_P.exit9
  %i.x = trunc i64 %i.n to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RB_SYMBOL_P.exit9.thread
  %i.y = ashr i64 %i.n, 1
  br label %rb_num2ull_inline.exit

bb.f:                                             ; preds = %RB_SYMBOL_P.exit9.thread
  %i.z = tail call i64 @rb_num2ull(i64 noundef %i.n) #47
  br label %rb_num2ull_inline.exit

rb_num2ull_inline.exit:                           ; preds = %bb.d, %bb.f, %bb.e, %RB_SYMBOL_P.exit9
  %.0 = phi i64 [ %i.z, %bb.f ], [ 0, %RB_SYMBOL_P.exit9 ], [ %i.y, %bb.e ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_gc_impl_stat(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @gc_stat_symbols, align 16, !tbaa !59
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %setup_gc_stat_symbols.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.208, i64 noundef 5) #47 ; 0 uses
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.208, i64 noundef 5) #47
  %i.f = tail call i64 @rb_id2sym(i64 noundef %i.e) #47
  store i64 %i.f, ptr @gc_stat_symbols, align 16, !tbaa !59
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.209, i64 noundef 4) #47 ; 0 uses
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.209, i64 noundef 4) #47
  %i.i = tail call i64 @rb_id2sym(i64 noundef %i.h) #47
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @gc_stat_symbols, i64 8), align 8, !tbaa !59
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.210, i64 noundef 12) #47 ; 0 uses
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.210, i64 noundef 12) #47
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.k) #47
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @gc_stat_symbols, i64 16), align 16, !tbaa !59
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.211, i64 noundef 13) #47 ; 0 uses
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str.211, i64 noundef 13) #47
  %i.o = tail call i64 @rb_id2sym(i64 noundef %i.n) #47
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @gc_stat_symbols, i64 24), align 8, !tbaa !59
  %i.p = tail call i64 @rb_intern2(ptr noundef nonnull @.str.212, i64 noundef 20) #47 ; 0 uses
  %i.q = tail call i64 @rb_intern2(ptr noundef nonnull @.str.212, i64 noundef 20) #47
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #47
  store i64 %i.r, ptr getelementptr inbounds nuw (i8, ptr @gc_stat_symbols, i64 32), align 16, !tbaa !59
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.213, i64 noundef 16) #47 ; 0 uses
  %i.t = tail call i64 @rb_intern2(ptr noundef nonnull @.str.213, i64 noundef 16) #47
  %i.u = tail call i64 @rb_id2sym(i64 noundef %i.t) #47
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @gc_stat_symbols, i64 40), align 8, !tbaa !59
end_hunk_2
begin_hunk_3_@gc_marks_finish:bb.a
  %i.be = add i64 %.02636.i, 2560
  %i.bf = add nuw nsw i64 %.02735.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, 26
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.i, !llvm.loop !512

.outer.us.i.i.i:                                  ; preds = %.outer.us.i.i.i.preheader, %bb.p
  %.promoted.us.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !183
  br label %bb.q

bb.l:                                             ; preds = %bb.q
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = add i32 %i.bg, -1                       ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ca, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bm = load i64, ptr %i.ca, align 8, !tbaa !59
  %i.bn = getelementptr i8, ptr %i.ca, i64 4000   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !173 ; 2 uses
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !175
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !173
  store ptr %i.ca, ptr %i.q, align 8, !tbaa !175
  %i.bq = load i64, ptr %i.r, align 8, !tbaa !176
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.r, align 8, !tbaa !176
  store ptr %i.bo, ptr %i.o, align 8, !tbaa !183
  %i.bs = load i32, ptr %i.s, align 4, !tbaa !171
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.i.i = phi i32 [ %i.bs, %bb.n ], [ %i.bi, %bb.m ]
  %i.bt = phi ptr [ %i.bo, %bb.n ], [ %i.ca, %bb.m ]
  %.118.ph.us.i.i.i = phi i64 [ %i.bm, %bb.n ], [ %i.bl, %bb.m ] ; 4 uses
  store i32 %.sink.i.i.i, ptr %i.p, align 8, !tbaa !172
  %i.bu = icmp eq i64 %.118.ph.us.i.i.i, 36
  br i1 %i.bu, label %bb.q, label %bb.p, !llvm.loop !508

bb.p:                                             ; preds = %bb.o
  %i.bv = inttoptr i64 %.118.ph.us.i.i.i to ptr
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !109
  %i.bx = trunc i64 %i.bw to i8
  %i.by = lshr i8 %i.bx, 5
  %i.bz = and i8 %i.by, 1
  store i64 %.118.ph.us.i.i.i, ptr %i.f, align 8, !tbaa !290
  store i8 %i.bz, ptr %i.e, align 8, !tbaa !291
  tail call fastcc void @rb_gc_mark_children(ptr noundef nonnull %0, i64 noundef %.118.ph.us.i.i.i)
  br label %.outer.us.i.i.i, !llvm.loop !508

bb.q:                                             ; preds = %bb.o, %.outer.us.i.i.i
  %i.ca = phi ptr [ %.promoted.us.i.i.i, %.outer.us.i.i.i ], [ %i.bt, %bb.o ] ; 6 uses
  %.not.i.us.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.us.i.i.i, label %pop_mark_stack.exit.thread.i.i.i, label %bb.l

pop_mark_stack.exit.thread.i.i.i:                 ; preds = %bb.q
  %i.cb = load i64, ptr %i.t, align 8, !tbaa !177
  %i.cc = load i64, ptr %i.r, align 8, !tbaa !176 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.r, label %gc_marks_wb_unprotected_objects.exit

bb.r:                                             ; preds = %pop_mark_stack.exit.thread.i.i.i
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !175 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4000
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !173
  store ptr %i.ch, ptr %i.q, align 8, !tbaa !175
  %i.ci = add i64 %i.cc, -1
  store i64 %i.ci, ptr %i.r, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.cf) #47
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !176
  br label %gc_marks_wb_unprotected_objects.exit

gc_marks_wb_unprotected_objects.exit:             ; preds = %pop_mark_stack.exit.thread.i.i.i, %bb.r
  %i.cj = phi i64 [ %.pre.i.i.i.i, %bb.r ], [ %i.cc, %pop_mark_stack.exit.thread.i.i.i ]
  store i64 %i.cj, ptr %i.t, align 8, !tbaa !177
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !513

.loopexit:                                        ; preds = %gc_marks_wb_unprotected_objects.exit, %bb.a
  %i.ck = getelementptr i8, ptr %0, i64 2224      ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !188 ; 6 uses
  %.not.i.i79 = icmp eq ptr %i.cl, null           ; 2 uses
  br i1 %.not.i.i79, label %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i, label %rb_darray_size.exit.lr.ph.i

rb_darray_size.exit.lr.ph.i:                      ; preds = %.loopexit
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !96 ; 2 uses
  %.not45.i = icmp eq i64 %i.cn, 0
  br i1 %.not45.i, label %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %rb_darray_size.exit.lr.ph.i, %rb_darray_size.exit.i
  %i.co = phi i64 [ %i.ds, %rb_darray_size.exit.i ], [ %i.cn, %rb_darray_size.exit.lr.ph.i ] ; 3 uses
  %.0162939.i = phi i64 [ %i.dt, %rb_darray_size.exit.i ], [ 0, %rb_darray_size.exit.lr.ph.i ] ; 2 uses
  %.03038.i = phi i64 [ %.3.i, %rb_darray_size.exit.i ], [ 0, %rb_darray_size.exit.lr.ph.i ] ; 5 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %.0162939.i ; 2 uses
  %.not.i81 = icmp eq ptr %i.cp, null
  br i1 %.not.i81, label %rb_darray_clear.exit.i, label %bb.w

rb_darray_clear.exit.i:                           ; preds = %rb_darray_size.exit.i, %.lr.ph.i80
  %.0.lcssa27.i = phi i64 [ %.3.i, %rb_darray_size.exit.i ], [ %.03038.i, %.lr.ph.i80 ] ; 4 uses
  %i.cq = getelementptr i8, ptr %0, i64 1112
  store i64 %.0.lcssa27.i, ptr %i.cq, align 8, !tbaa !514
  store i64 0, ptr %i.cl, align 8, !tbaa !96
  %i.cr = icmp ugt i64 %.0.lcssa27.i, 2305843009213693951
  br i1 %i.cr, label %bb.s, label %rbimpl_size_mul_or_raise.exit.i.i.i, !prof !515

bb.s:                                             ; preds = %rb_darray_clear.exit.i
  tail call void @ruby_malloc_size_overflow(i64 noundef %.0.lcssa27.i, i64 noundef 8) #65
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.sink.split.i:   ; preds = %rb_darray_size.exit.lr.ph.i, %.loopexit
  %i.cs = getelementptr i8, ptr %0, i64 1112
  store i64 0, ptr %i.cs, align 8, !tbaa !514
  br label %rbimpl_size_mul_or_raise.exit.i.i.i

rbimpl_size_mul_or_raise.exit.i.i.i:              ; preds = %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i, %rb_darray_clear.exit.i
  %.02854.i = phi i64 [ %.0.lcssa27.i, %rb_darray_clear.exit.i ], [ 0, %rbimpl_size_mul_or_raise.exit.i.i.sink.split.i ] ; 2 uses
  %i.ct = shl nuw i64 %.02854.i, 3                ; 2 uses
  %i.cu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ct, i64 16) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %bb.t, label %rbimpl_size_add_or_raise.exit.i.i.i, !prof !60

bb.t:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  tail call void @ruby_malloc_add_size_overflow(i64 noundef %i.ct, i64 noundef 16) #65
  unreachable

rbimpl_size_add_or_raise.exit.i.i.i:              ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  %i.cw = extractvalue { i64, i1 } %i.cu, 0
  %i.cx = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cw) #71 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.u, label %rb_darray_realloc_mul_add_without_gc.exit.i.i

bb.u:                                             ; preds = %rbimpl_size_add_or_raise.exit.i.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.119) #63
  unreachable

rb_darray_realloc_mul_add_without_gc.exit.i.i:    ; preds = %rbimpl_size_add_or_raise.exit.i.i.i
  br i1 %.not.i.i79, label %bb.v, label %gc_update_weak_references.exit

bb.v:                                             ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i
  store i64 0, ptr %i.cx, align 8, !tbaa !96
  br label %gc_update_weak_references.exit

bb.w:                                             ; preds = %.lr.ph.i80
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !216 ; 3 uses
  %.not19.i = icmp eq ptr %i.cz, null
  br i1 %.not19.i, label %rb_darray_size.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59 ; 4 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = and i64 %i.da, 7
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = or i1 %i.db, %i.dd
  br i1 %i.de, label %rb_darray_size.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = and i64 %i.da, -65536
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = load ptr, ptr %i.dg, align 65536, !tbaa !113
  %i.di = getelementptr i8, ptr %i.dh, i64 280
  %.lhs.trunc.i.i = trunc i64 %i.da to i16        ; 2 uses
  %i.dj = udiv i16 %.lhs.trunc.i.i, 40
  %i.dk = udiv i16 %.lhs.trunc.i.i, 2560
  %.zext2.i.i = zext nneg i16 %i.dk to i64
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %.zext2.i.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !59
  %i.dn = and i16 %i.dj, 63
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dm, %i.dp
  %.not20.i = icmp eq i64 %i.dq, 0
  br i1 %.not20.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i64 36, ptr %i.cz, align 8, !tbaa !59
  %.pre.i = load i64, ptr %i.cl, align 8, !tbaa !96
  br label %rb_darray_size.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dr = add i64 %.03038.i, 1
  br label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %i.ds = phi i64 [ %i.co, %bb.w ], [ %i.co, %bb.x ], [ %i.co, %bb.aa ], [ %.pre.i, %bb.z ] ; 2 uses
  %.3.i = phi i64 [ %.03038.i, %bb.w ], [ %.03038.i, %bb.x ], [ %i.dr, %bb.aa ], [ %.03038.i, %bb.z ] ; 2 uses
  %i.dt = add nuw i64 %.0162939.i, 1              ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  br i1 %i.du, label %.lr.ph.i80, label %rb_darray_clear.exit.i

gc_update_weak_references.exit:                   ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i, %bb.v
  %i.dv = getelementptr i8, ptr %i.cx, i64 8
  store i64 %.02854.i, ptr %i.dv, align 8, !tbaa !292
  %i.dw = ptrtoint ptr %i.cx to i64
  store i64 %i.dw, ptr %i.ck, align 8
  %i.dx = getelementptr i8, ptr %0, i64 2240
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !314
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 8) ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 184
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !330
  %i.eb = getelementptr i8, ptr %0, i64 336
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !330
  %i.ed = getelementptr i8, ptr %0, i64 488
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !330
  %i.ef = getelementptr i8, ptr %0, i64 640
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !330
  %i.eh = getelementptr i8, ptr %0, i64 792
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !330
  %i.ej = getelementptr i8, ptr %0, i64 864
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !339 ; 2 uses
  %i.el = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  %i.em = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 64), align 32, !tbaa !352
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 40), align 8, !tbaa !516
  %i.eo = load i16, ptr %i.b, align 4
  %i.ep = load <4 x i64>, ptr @gc_params, align 32, !tbaa !59
  %i.eq = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 32), align 32, !tbaa !59
  %i.er = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ep)
  %op.rdx = add i64 %i.er, %i.eq
  %i.es = mul i64 %op.rdx, %spec.select
  %i.et = add i64 %i.ec, %i.ea
  %i.eu = add i64 %i.et, %i.ee
  %i.ev = add i64 %i.eu, %i.eg
  %i.ew = add i64 %i.ev, %i.ei                    ; 6 uses
  %i.ex = sub i64 %i.ew, %i.ek                    ; 3 uses
  %i.ey = uitofp i64 %i.ew to double              ; 5 uses
  %i.ez = fmul double %i.el, %i.ey
  %i.fa = fptoui double %i.ez to i64
  %i.fb = fmul double %i.em, %i.ey
  %i.fc = fptoui double %i.fb to i64
  %i.fd = mul i64 %i.en, %spec.select
  %.065 = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.fc)
  %i.fe = and i16 %i.eo, 1024
  %.not92 = icmp eq i16 %i.fe, 0                  ; 2 uses
  %spec.select77 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 %i.fa) ; 2 uses
  %i.ff = icmp ugt i64 %i.ex, %spec.select77
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %gc_update_weak_references.exit
  %i.fg = sub nuw i64 %i.ex, %spec.select77
  %i.fh = udiv i64 %i.fg, 1638
  br label %bb.ac

bb.ac:                                            ; preds = %gc_update_weak_references.exit, %bb.ab
  %.sink = phi i64 [ %i.fh, %bb.ab ], [ 0, %gc_update_weak_references.exit ]
  %i.fi = getelementptr i8, ptr %0, i64 912
  store i64 %.sink, ptr %i.fi, align 8, !tbaa !334
  %i.fj = getelementptr i8, ptr %0, i64 920       ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !331
  %i.fl = icmp eq i64 %i.fk, 0
  %i.fm = icmp ult i64 %i.ex, %.065
  %or.cond = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not92, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr i8, ptr %0, i64 1048
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !336
  %i.fp = getelementptr i8, ptr %0, i64 1152
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !517
  %i.fr = sub i64 %i.fo, %i.fq
  %i.fs = icmp ult i64 %i.fr, 3
  br i1 %i.fs, label %bb.af, label %.thread86

.thread86:                                        ; preds = %bb.ae
  %i.ft = getelementptr i8, ptr %0, i64 1144      ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !453
  %i.fv = or i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 8, !tbaa !453
  br label %bb.am

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fw = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 72), align 8, !tbaa !450 ; 2 uses
  %i.fx = fcmp oeq double %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fy = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 48), align 16, !tbaa !451
  %i.fz = fmul double %i.fy, %i.ey
  %i.ga = fptoui double %i.fz to i64
  br label %.thread89

bb.ah:                                            ; preds = %bb.af
  %i.gb = icmp eq i64 %i.ew, 0
  br i1 %i.gb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gc = getelementptr i8, ptr %0, i64 40
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 0, %i.gd
  %i.gf = sdiv exact i64 %i.ge, 19
  %i.gg = getelementptr i8, ptr @gc_params, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !59
  br label %.thread89

bb.aj:                                            ; preds = %bb.ah
  %i.gi = uitofp i64 %i.ek to double
  %i.gj = fsub double 1.000000e+00, %i.fw
  %i.gk = fmul double %i.gj, %i.ey
  %i.gl = fdiv double %i.gi, %i.gk                ; 2 uses
  %i.gm = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 48), align 16, !tbaa !451 ; 2 uses
  %i.gn = fcmp ogt double %i.gl, %i.gm
  %.021.i = select i1 %i.gn, double %i.gm, double %i.gl ; 2 uses
  %i.go = fcmp olt double %.021.i, 1.000000e+00
  %.122.i = select i1 %i.go, double 1.100000e+00, double %.021.i
  %i.gp = fmul double %.122.i, %i.ey
  %i.gq = fptoui double %i.gp to i64
  br label %.thread89

.thread89:                                        ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i = phi i64 [ %i.ga, %bb.ag ], [ %i.gh, %bb.ai ], [ %i.gq, %bb.aj ] ; 2 uses
  %i.gr = load i64, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 56), align 8, !tbaa !452 ; 2 uses
  %.not.i82 = icmp eq i64 %i.gr, 0
  %i.gs = add i64 %i.gr, %i.ew
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.gs)
  %.2.i = select i1 %.not.i82, i64 %.0.i, i64 %spec.select.i ; 2 uses
  %i.gt = sub i64 %.2.i, %i.ew
  %i.gu = icmp eq i64 %.2.i, %i.ew
  %spec.store.select.i = select i1 %i.gu, i64 1, i64 %i.gt
  store i64 %spec.store.select.i, ptr %i.fj, align 8, !tbaa !331
  br label %bb.al

bb.ak:                                            ; preds = %bb.ac
  br i1 %.not92, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread89, %bb.ak
  %i.gv = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 96), align 32, !tbaa !518 ; 2 uses
  %i.gw = getelementptr i8, ptr %0, i64 1160
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !156
  %i.gy = uitofp i64 %i.gx to double
  %i.gz = fmul double %i.gv, %i.gy
  %i.ha = fptoui double %i.gz to i64
  %i.hb = getelementptr i8, ptr %0, i64 1176
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !155
  %i.hd = uitofp i64 %i.hc to double              ; 2 uses
  %i.he = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 88), align 8, !tbaa !519
  %i.hf = fmul double %i.he, %i.hd
  %i.hg = fptoui double %i.hf to i64
  %. = tail call i64 @llvm.umax.i64(i64 %i.ha, i64 %i.hg)
  %i.hh = getelementptr i8, ptr %0, i64 1168
  store i64 %., ptr %i.hh, align 8, !tbaa !348
  %i.hi = fmul double %i.gv, %i.hd
  %i.hj = fptoui double %i.hi to i64
  %i.hk = getelementptr i8, ptr %0, i64 1184
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !349
  br label %bb.am

bb.am:                                            ; preds = %.thread86, %bb.al, %bb.ak
  %i.hl = getelementptr i8, ptr %0, i64 1160
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !156
  %i.hn = getelementptr i8, ptr %0, i64 1168
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !348
  %i.hp = icmp ugt i64 %i.hm, %i.ho
  br i1 %i.hp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hq = getelementptr i8, ptr %0, i64 1144      ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !453
  %i.hs = or i32 %i.hr, 4
  store i32 %i.hs, ptr %i.hq, align 8, !tbaa !453
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ht = getelementptr i8, ptr %0, i64 1176
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !155
  %i.hv = getelementptr i8, ptr %0, i64 1184
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !349
  %i.hx = icmp ugt i64 %i.hu, %i.hw
  br i1 %i.hx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hy = getelementptr i8, ptr %0, i64 1144      ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !453
  %i.ia = or i32 %i.hz, 2
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !453
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void @rb_ractor_finish_marking() #47
  %i.ib = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.ic = and i32 %i.ib, 8388608
  %.not12.i = icmp eq i32 %i.ic, 0
  br i1 %.not12.i, label %rb_gc_event_hook.exit, label %bb.ar, !prof !189

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.id = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !14
  store volatile ptr %i.ie, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.if = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !224 ; 3 uses
  %.not.i83 = icmp eq ptr %i.ig, null
end_hunk_3
begin_hunk_4_@heap_page_allocate_and_initialize:bb.a
  %i.b = getelementptr i8, ptr %0, i64 808        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !424  ; 4 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %heap_page_resurrect.exit

heap_page_resurrect.exit:                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 800        ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !333
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !333
  %i.h = getelementptr i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454
  store ptr %i.i, ptr %i.b, align 8, !tbaa !424
  %.phi.trans.insert = getelementptr i8, ptr %i.c, i64 32
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !185
  %.pre33 = ptrtoint ptr %.pre32 to i64           ; 2 uses
  %.pre34 = add i64 %.pre33, 8
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 920
  %i.k = load i64, ptr %i.j, align 8, !tbaa !331
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.b.i.i = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @mmap(ptr noundef null, i64 noundef 131072, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #47 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %.not26.i.i, label %heap_page_body_allocate.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %i.l, i64 noundef 131072, ptr noundef nonnull @.str.148) #47 ; 0 uses
  %i.n = tail call ptr @rb_errno_ptr() #47
  store i32 0, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr i8, ptr %i.l, i64 65536    ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 65535                      ; 4 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r     ; 3 uses
  %i.t = sub nuw nsw i64 65536, %i.q
  %i.u = tail call i32 @munmap(ptr noundef %i.l, i64 noundef %i.t) #47
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.149) #63
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not24.i.i = icmp eq i64 %i.q, 0
  br i1 %.not24.i.i, label %heap_page_body_allocate.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.s, i64 65536
  %i.w = tail call i32 @munmap(ptr noundef %i.v, i64 noundef %i.q) #47
  %.not25.i.i = icmp eq i32 %i.w, 0
  br i1 %.not25.i.i, label %heap_page_body_allocate.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.150) #63
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.x = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 65536, i64 noundef 65536) #47
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %i.y = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br i1 %.not.i.i.i, label %heap_page_body_allocate.exit.i, label %heap_page_body_allocate.exit.thread.i

heap_page_body_allocate.exit.i:                   ; preds = %bb.j, %bb.h, %bb.g
  %.1.i.i = phi ptr [ %i.s, %bb.g ], [ %i.s, %bb.h ], [ %i.y, %bb.j ] ; 6 uses
  %i.z = icmp eq ptr %.1.i.i, null
  br i1 %i.z, label %heap_page_body_allocate.exit.thread.i, label %bb.k

heap_page_body_allocate.exit.thread.i:            ; preds = %heap_page_body_allocate.exit.i, %bb.j, %bb.d
  call void @rb_memerror() #64
  unreachable

bb.k:                                             ; preds = %heap_page_body_allocate.exit.i
  %i.aa = call noalias noundef dereferenceable_or_null(1736) ptr @calloc(i64 noundef 1, i64 noundef 1736) #66 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @heap_page_body_free(ptr noundef nonnull %.1.i.i)
  call void @rb_memerror() #64
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ac = ptrtoint ptr %.1.i.i to i64             ; 3 uses
  %i.ad = add i64 %i.ac, 8                        ; 5 uses
  %i.ae = add i64 %i.ac, 65536                    ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 872       ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80 ; 6 uses
  %.not.i53.i = icmp eq ptr %i.ag, null           ; 2 uses
  br i1 %.not.i53.i, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.m
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96 ; 4 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %rb_darray_size.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_darray_size.exit.i
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %.060.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 2 uses
  %.04559.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.146.i, %bb.r ] ; 2 uses
  %i.aj = add i64 %.04559.i, %.060.i
  %i.ak = lshr i64 %i.aj, 1                       ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !99
  %i.an = getelementptr i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.ad
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = add nuw i64 %i.ak, 1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ar = icmp ugt i64 %i.ao, %i.ad
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.147, ptr noundef nonnull %.1.i.i, i64 noundef %i.ak) #63
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %.146.i = phi i64 [ %.04559.i, %bb.o ], [ %i.ak, %bb.p ] ; 3 uses
  %.1.i = phi i64 [ %i.aq, %bb.o ], [ %.060.i, %bb.p ] ; 2 uses
  %i.as = icmp ult i64 %.1.i, %.146.i
  br i1 %i.as, label %bb.n, label %rb_darray_size.exit.i.i, !llvm.loop !583

rb_darray_size.exit.i.i:                          ; preds = %bb.r, %rb_darray_size.exit.i
  %.045.lcssa.ph.i = phi i64 [ 0, %rb_darray_size.exit.i ], [ %.146.i, %bb.r ] ; 4 uses
  %i.at = getelementptr i8, ptr %i.ag, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !292
  %.fr.i.i = freeze i64 %i.au                     ; 3 uses
  %i.av = icmp ult i64 %i.ah, %.fr.i.i
  br i1 %i.av, label %rb_darray_ensure_space.exit.thread.i, label %bb.s

rb_darray_ensure_space.exit.thread.i:             ; preds = %rb_darray_size.exit.i.i
  %i.aw = getelementptr i8, ptr %i.ag, i64 16
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.045.lcssa.ph.i
  br label %rb_darray_size.exit56.i

bb.s:                                             ; preds = %rb_darray_size.exit.i.i
  %i.ay = icmp eq i64 %.fr.i.i, 0
  %i.az = shl i64 %.fr.i.i, 1                     ; 3 uses
  br i1 %i.ay, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = icmp ugt i64 %i.az, 2305843009213693951
  br i1 %i.ba, label %bb.u, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, !prof !293

bb.u:                                             ; preds = %bb.t
  call void @ruby_malloc_size_overflow(i64 noundef %i.az, i64 noundef 8) #65
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.i.i:            ; preds = %bb.m, %bb.s, %bb.t
  %.045.lcssa79.i = phi i64 [ %.045.lcssa.ph.i, %bb.t ], [ %.045.lcssa.ph.i, %bb.s ], [ 0, %bb.m ] ; 2 uses
  %i.bb = phi i64 [ %i.az, %bb.t ], [ 1, %bb.s ], [ 1, %bb.m ] ; 2 uses
  %i.bc = shl nuw i64 %i.bb, 3                    ; 2 uses
  %i.bd = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bc, i64 16) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %bb.v, label %rbimpl_size_add_or_raise.exit.i.i.i.i, !prof !60

bb.v:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i.i
  call void @ruby_malloc_add_size_overflow(i64 noundef %i.bc, i64 noundef 16) #65
  unreachable

rbimpl_size_add_or_raise.exit.i.i.i.i:            ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i.i
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %i.bg = call ptr @realloc(ptr noundef %i.ag, i64 noundef %i.bf) #71 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.w, label %rb_darray_realloc_mul_add_without_gc.exit.i.i.i

bb.w:                                             ; preds = %rbimpl_size_add_or_raise.exit.i.i.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.119) #63
  unreachable

rb_darray_realloc_mul_add_without_gc.exit.i.i.i:  ; preds = %rbimpl_size_add_or_raise.exit.i.i.i.i
  br i1 %.not.i53.i, label %bb.x, label %rb_darray_ensure_space.exit.i

bb.x:                                             ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i.i
  store i64 0, ptr %i.bg, align 8, !tbaa !96
  br label %rb_darray_ensure_space.exit.i

rb_darray_ensure_space.exit.i:                    ; preds = %bb.x, %rb_darray_realloc_mul_add_without_gc.exit.i.i.i
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  store i64 %i.bb, ptr %i.bi, align 8, !tbaa !292
  %i.bj = ptrtoint ptr %i.bg to i64
  store i64 %i.bj, ptr %i.af, align 8
  %i.bk = getelementptr i8, ptr %i.bg, i64 16
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %.045.lcssa79.i
  %.pre = load i64, ptr %i.bg, align 8, !tbaa !96
  br label %rb_darray_size.exit56.i

rb_darray_size.exit56.i:                          ; preds = %rb_darray_ensure_space.exit.thread.i, %rb_darray_ensure_space.exit.i
  %i.bm = phi ptr [ %i.bl, %rb_darray_ensure_space.exit.i ], [ %i.ax, %rb_darray_ensure_space.exit.thread.i ] ; 2 uses
  %.045.lcssa8086.i = phi i64 [ %.045.lcssa79.i, %rb_darray_ensure_space.exit.i ], [ %.045.lcssa.ph.i, %rb_darray_ensure_space.exit.thread.i ] ; 2 uses
  %i.bn = phi i64 [ %.pre, %rb_darray_ensure_space.exit.i ], [ %i.ah, %rb_darray_ensure_space.exit.thread.i ]
  %i.bo = sub i64 %i.bn, %.045.lcssa8086.i        ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 2305843009213693951
  br i1 %i.bp, label %bb.y, label %rbimpl_size_mul_or_raise.exit.i, !prof !60

bb.y:                                             ; preds = %rb_darray_size.exit56.i
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bo) #65
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_darray_size.exit56.i
  %i.bq = getelementptr i8, ptr %i.bm, i64 8
  %i.br = shl nuw i64 %i.bo, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bq, ptr noundef nonnull align 1 %i.bm, i64 noundef %i.br, i1 noundef false) #47
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !80 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %.045.lcssa8086.i
  store ptr %i.aa, ptr %i.bu, align 8, !tbaa !99
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !96
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !96
  %i.bx = getelementptr i8, ptr %0, i64 896       ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !59
  %i.bz = add i64 %i.by, -1
  %or.cond.not.i = icmp ult i64 %i.bz, %i.ad
  br i1 %or.cond.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  store i64 %i.ad, ptr %i.bx, align 8, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rbimpl_size_mul_or_raise.exit.i
  %i.ca = getelementptr i8, ptr %0, i64 904       ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !59
  %i.cc = icmp ult i64 %i.cb, %i.ae
  br i1 %i.cc, label %bb.ab, label %heap_page_allocate.exit

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.ae, ptr %i.ca, align 8, !tbaa !59
  br label %heap_page_allocate.exit

heap_page_allocate.exit:                          ; preds = %bb.aa, %bb.ab
  %i.cd = getelementptr i8, ptr %i.aa, i64 32
  store ptr %.1.i.i, ptr %i.cd, align 8, !tbaa !185
  store ptr %i.aa, ptr %.1.i.i, align 8, !tbaa !113
  %i.ce = getelementptr i8, ptr %0, i64 880       ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !341
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !341
  br label %bb.ac

bb.ac:                                            ; preds = %heap_page_allocate.exit, %heap_page_resurrect.exit
  %.pre-phi35 = phi i64 [ %i.ad, %heap_page_allocate.exit ], [ %.pre34, %heap_page_resurrect.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ac, %heap_page_allocate.exit ], [ %.pre33, %heap_page_resurrect.exit ] ; 2 uses
  %.0.ph = phi ptr [ %i.aa, %heap_page_allocate.exit ], [ %i.c, %heap_page_resurrect.exit ] ; 10 uses
  %i.ch = urem i64 %.pre-phi35, 40                ; 2 uses
  %.not.i20 = icmp eq i64 %i.ch, 0
  br i1 %.not.i20, label %._crit_edge2.i, label %bb.ad

._crit_edge2.i:                                   ; preds = %bb.ac
  %.pre.i23 = load i16, ptr %1, align 8, !tbaa !163
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ci = sub i64 %.pre-phi, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ci, 48                       ; 2 uses
  %i.ck = and i64 %i.cj, 65528
  %.off.i = add nsw i64 %i.ck, -40
  %i.cl = icmp ult i64 %.off.i, 40
  %.pre3.i = load i16, ptr %1, align 8, !tbaa !163 ; 3 uses
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cm = sext i16 %.pre3.i to i64
  %i.cn = add i64 %i.ci, 8
  %i.co = add i64 %i.cn, %i.cm
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge2.i
  %i.cp = phi i16 [ %.pre.i23, %._crit_edge2.i ], [ %.pre3.i, %bb.ae ], [ %.pre3.i, %bb.ad ] ; 2 uses
  %.1.i21 = phi i64 [ %.pre-phi35, %._crit_edge2.i ], [ %i.co, %bb.ae ], [ %i.cj, %bb.ad ] ; 5 uses
  %.neg.i = add i64 %.pre-phi, 65536
  %i.cq = sub i64 %.neg.i, %.1.i21
  %i.cr = sext i16 %i.cp to i64                   ; 3 uses
  %i.cs = udiv i64 %i.cq, %i.cr                   ; 3 uses
  %i.ct = getelementptr i8, ptr %.0.ph, i64 40
  store i64 %.1.i21, ptr %i.ct, align 8, !tbaa !107
  %i.cu = trunc i64 %i.cs to i16                  ; 2 uses
  %i.cv = getelementptr i8, ptr %.0.ph, i64 2
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !108
  store i16 %i.cp, ptr %.0.ph, align 8, !tbaa !100
  %i.cw = getelementptr i8, ptr %.0.ph, i64 16
  store ptr %1, ptr %i.cw, align 8, !tbaa !431
  %i.cx = getelementptr i8, ptr %.0.ph, i64 48    ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !433
  %i.cy = shl nsw i64 %i.cr, 32
  %sext.i = mul i64 %i.cy, %i.cs
  %i.cz = ashr exact i64 %sext.i, 32
  %i.da = add i64 %i.cz, %.1.i21                  ; 2 uses
  %i.db = icmp ult i64 %.1.i21, %i.da
  br i1 %i.db, label %.lr.ph.i22, label %heap_add_page.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i22
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !433
  br label %heap_add_page.exit

.lr.ph.i22:                                       ; preds = %bb.af, %.lr.ph.i22
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i22 ], [ null, %bb.af ]
  %.01.i = phi i64 [ %i.df, %.lr.ph.i22 ], [ %.1.i21, %bb.af ] ; 2 uses
  %i.dd = inttoptr i64 %.01.i to ptr              ; 4 uses
  store i64 0, ptr %i.dd, align 8, !tbaa !432
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !196
  %i.df = add i64 %.01.i, %i.cr                   ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.da
  br i1 %i.dg, label %.lr.ph.i22, label %._crit_edge.i, !llvm.loop !535

heap_add_page.exit:                               ; preds = %bb.af, %._crit_edge.i
  %i.dh = getelementptr i8, ptr %.0.ph, i64 4
  store i16 %i.cu, ptr %i.dh, align 4, !tbaa !456
  %i.di = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !536
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !536
  %i.dl = getelementptr i8, ptr %1, i64 88
  %i.dm = getelementptr i8, ptr %.0.ph, i64 56    ; 3 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !141
  %i.dn = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !464 ; 2 uses
  %i.dp = getelementptr i8, ptr %.0.ph, i64 64
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !464
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !141
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !464
  %i.dq = getelementptr i8, ptr %1, i64 136       ; 2 uses
  %i.dr = and i64 %i.cs, 65535                    ; 2 uses
  %i.ds = load <2 x i64>, ptr %i.dq, align 8, !tbaa !59
  %i.dt = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.dr, i64 1
  %i.du = add <2 x i64> %i.ds, %i.dt
  store <2 x i64> %i.du, ptr %i.dq, align 8, !tbaa !59
  %i.dv = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !447
  %i.dx = getelementptr i8, ptr %.0.ph, i64 24
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !454
  store ptr %.0.ph, ptr %i.dv, align 8, !tbaa !447
  br i1 %i.d, label %.sink.split, label %bb.ag

.sink.split:                                      ; preds = %heap_add_page.exit
  %i.dy = getelementptr i8, ptr %0, i64 920       ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !331
  %.sink = call i64 @llvm.usub.sat.i64(i64 %i.dz, i64 %i.dr)
  store i64 %.sink, ptr %i.dy, align 8, !tbaa !331
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.b, %heap_add_page.exit
  %i.ea = phi i32 [ 1, %heap_add_page.exit ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %i.ea
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #54

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gc_start(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rusage, align 8             ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.rusage, align 8             ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 6 uses
  %i.c = alloca [26 x i64], align 16              ; 16 uses
  %7 = alloca %struct.rusage, align 8             ; 6 uses
  %8 = alloca %struct.rusage, align 8             ; 6 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = lshr i32 %1, 16
  %.lobit = and i32 %i.g, 1                       ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 872        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %rb_darray_size.exit.thread, label %rb_darray_size.exit

rb_darray_size.exit:                              ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !96
  %.not = icmp eq i64 %i.j, 0
end_hunk_4
