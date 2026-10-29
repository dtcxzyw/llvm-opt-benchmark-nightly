Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs_to_crs?download=true
inline.NumInlined: 371
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@proj_create_crs_to_crs_from_pj:bb.a
_ZL14getOptionValuePKcS0_.exit367.thread:         ; preds = %_ZL14getOptionValuePKcS0_.exit365.thread
  %i.x = load ptr, ptr %.0275483613, align 8, !tbaa !23 ; 2 uses
  %i.y = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withEPKcS3_(ptr noundef %i.x, ptr noundef nonnull @.str.16) #17
  br i1 %i.y, label %_ZL14getOptionValuePKcS0_.exit369, label %_ZL14getOptionValuePKcS0_.exit369.thread

_ZL14getOptionValuePKcS0_.exit369:                ; preds = %_ZL14getOptionValuePKcS0_.exit367.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 10 ; 2 uses
  %i.aa = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.13) #17
  br i1 %i.aa, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %_ZL14getOptionValuePKcS0_.exit369
  %i.ab = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.14) #17
  br i1 %i.ab, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0307, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %.0307, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95
  tail call void %i.ad(ptr noundef %i.af, i32 noundef 1, ptr noundef nonnull @.str.17)
  br label %.critedge.thread

_ZL14getOptionValuePKcS0_.exit369.thread:         ; preds = %_ZL14getOptionValuePKcS0_.exit367.thread
  %i.ag = load ptr, ptr %.0275483613, align 8, !tbaa !23 ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withEPKcS3_(ptr noundef %i.ag, ptr noundef nonnull @.str.18) #17
  br i1 %i.ah, label %_ZL14getOptionValuePKcS0_.exit371, label %_ZL14getOptionValuePKcS0_.exit371.thread

_ZL14getOptionValuePKcS0_.exit371:                ; preds = %_ZL14getOptionValuePKcS0_.exit369.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.aj = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.13) #17
  %spec.select = select i1 %i.aj, i8 1, i8 %.0284480616
  br label %.lr.ph

_ZL14getOptionValuePKcS0_.exit371.thread:         ; preds = %_ZL14getOptionValuePKcS0_.exit369.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 16, ptr %i.a, align 8, !tbaa !18
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %_ZL14getOptionValuePKcS0_.exit371.thread
  store ptr %i.al, ptr %5, align 8, !tbaa !16
  %i.am = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8, !tbaa !17
  %i.ao = load ptr, ptr %5, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.aq = load ptr, ptr %.0275483613, align 8, !tbaa !23 ; 2 uses
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #17 ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !tbaa !17
  %i.at = sub i64 4611686018427387903, %i.as
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #18
          to label %.noexc372 unwind label %bb.k

.noexc372:                                        ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.aq, i64 noundef %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0307, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %.0307, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !95
  %i.ba = load ptr, ptr %5, align 8, !tbaa !16
  invoke void %i.ax(ptr noundef %i.az, i32 noundef 1, ptr noundef %i.ba)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bb = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ak
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge.thread

bb.j:                                             ; preds = %_ZL14getOptionValuePKcS0_.exit371.thread
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ak
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %bb.k
  %i.bj = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.j ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374 ], [ %i.bg, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ch

.lr.ph:                                           ; preds = %_ZL14getOptionValuePKcS0_.exit, %_ZL14getOptionValuePKcS0_.exit371, %bb.f, %_ZL14getOptionValuePKcS0_.exit369, %bb.d, %_ZL14getOptionValuePKcS0_.exit367, %_ZL14getOptionValuePKcS0_.exit365
  %.2298.ph = phi ptr [ %.0296477619, %bb.f ], [ %.0296477619, %_ZL14getOptionValuePKcS0_.exit369 ], [ %.0296477619, %bb.d ], [ %.0296477619, %_ZL14getOptionValuePKcS0_.exit367 ], [ %i.j, %_ZL14getOptionValuePKcS0_.exit ], [ %.0296477619, %_ZL14getOptionValuePKcS0_.exit365 ], [ %.0296477619, %_ZL14getOptionValuePKcS0_.exit371 ] ; 2 uses
  %.2294.ph = phi double [ %.0292478618, %bb.f ], [ %.0292478618, %_ZL14getOptionValuePKcS0_.exit369 ], [ %.0292478618, %bb.d ], [ %.0292478618, %_ZL14getOptionValuePKcS0_.exit367 ], [ %.0292478618, %_ZL14getOptionValuePKcS0_.exit ], [ %i.n, %_ZL14getOptionValuePKcS0_.exit365 ], [ %.0292478618, %_ZL14getOptionValuePKcS0_.exit371 ] ; 2 uses
  %.2290.ph = phi i8 [ %.0288479617, %bb.f ], [ %.0288479617, %_ZL14getOptionValuePKcS0_.exit369 ], [ 0, %bb.d ], [ 1, %_ZL14getOptionValuePKcS0_.exit367 ], [ %.0288479617, %_ZL14getOptionValuePKcS0_.exit ], [ %.0288479617, %_ZL14getOptionValuePKcS0_.exit365 ], [ %.0288479617, %_ZL14getOptionValuePKcS0_.exit371 ] ; 2 uses
  %.2286.ph = phi i8 [ %.0284480616, %bb.f ], [ %.0284480616, %_ZL14getOptionValuePKcS0_.exit369 ], [ %.0284480616, %bb.d ], [ %.0284480616, %_ZL14getOptionValuePKcS0_.exit367 ], [ %.0284480616, %_ZL14getOptionValuePKcS0_.exit ], [ %.0284480616, %_ZL14getOptionValuePKcS0_.exit365 ], [ %spec.select, %_ZL14getOptionValuePKcS0_.exit371 ] ; 2 uses
  %.2282.ph = phi i8 [ 0, %bb.f ], [ 0, %_ZL14getOptionValuePKcS0_.exit369 ], [ %.0280481615, %bb.d ], [ %.0280481615, %_ZL14getOptionValuePKcS0_.exit367 ], [ %.0280481615, %_ZL14getOptionValuePKcS0_.exit ], [ %.0280481615, %_ZL14getOptionValuePKcS0_.exit365 ], [ %.0280481615, %_ZL14getOptionValuePKcS0_.exit371 ] ; 2 uses
  %.2278.ph = phi i8 [ 0, %bb.f ], [ 1, %_ZL14getOptionValuePKcS0_.exit369 ], [ %.0276482614, %bb.d ], [ %.0276482614, %_ZL14getOptionValuePKcS0_.exit367 ], [ %.0276482614, %_ZL14getOptionValuePKcS0_.exit ], [ %.0276482614, %_ZL14getOptionValuePKcS0_.exit365 ], [ %.0276482614, %_ZL14getOptionValuePKcS0_.exit371 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0275483613, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !23 ; 2 uses
  %.not329 = icmp eq ptr %i.bm, null
  br i1 %.not329, label %.lr.ph..critedge.loopexit_crit_edge, label %.lr.ph620

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %i.bn = zext nneg i8 %.2290.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %.lr.ph..critedge.loopexit_crit_edge, %bb.c
  %.0296.lcssa = phi ptr [ null, %bb.c ], [ %.2298.ph, %.lr.ph..critedge.loopexit_crit_edge ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.0292.lcssa = phi double [ -1.000000e+00, %bb.c ], [ %.2294.ph, %.lr.ph..critedge.loopexit_crit_edge ], [ -1.000000e+00, %.lr.ph.preheader ] ; 3 uses
  %.0288.lcssa = phi i32 [ 1, %bb.c ], [ %i.bn, %.lr.ph..critedge.loopexit_crit_edge ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0284.lcssa = phi i8 [ 0, %bb.c ], [ %.2286.ph, %.lr.ph..critedge.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.0280.lcssa = phi i8 [ %i.d, %bb.c ], [ %.2282.ph, %.lr.ph..critedge.loopexit_crit_edge ], [ %i.d, %.lr.ph.preheader ] ; 6 uses
  %.0276.lcssa = phi i8 [ %i.f, %bb.c ], [ %.2278.ph, %.lr.ph..critedge.loopexit_crit_edge ], [ %i.f, %.lr.ph.preheader ] ; 5 uses
  %i.bo = tail call ptr @proj_create_operation_factory_context(ptr noundef %.0307, ptr noundef %.0296.lcssa) ; 9 uses
  %.not336 = icmp eq ptr %i.bo, null
  br i1 %.not336, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %.critedge
  tail call void @proj_operation_factory_context_set_allow_ballpark_transformations(ptr noundef %.0307, ptr noundef nonnull %i.bo, i32 noundef %.0288.lcssa)
  %i.bp = fcmp oge double %.0292.lcssa, 0.000000e+00 ; 2 uses
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @proj_operation_factory_context_set_desired_accuracy(ptr noundef %.0307, ptr noundef nonnull %i.bo, double noundef %.0292.lcssa)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not337 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not337, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load i8, ptr %3, align 8, !tbaa !97, !range !21, !noundef !22
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !98
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !99
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bz = load double, ptr %i.by, align 8, !tbaa !101
  tail call void @proj_operation_factory_context_set_area_of_interest(ptr noundef %.0307, ptr noundef nonnull %i.bo, double noundef %i.bt, double noundef %i.bv, double noundef %i.bx, double noundef %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16
  tail call void @proj_operation_factory_context_set_area_of_interest_name(ptr noundef %.0307, ptr noundef nonnull %i.bo, ptr noundef %i.ce)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.n
  tail call void @proj_operation_factory_context_set_spatial_criterion(ptr noundef %.0307, ptr noundef nonnull %i.bo, i32 noundef 1)
  %i.cf = trunc nuw i8 %.0276.lcssa to i1         ; 4 uses
  %i.cg = trunc nuw i8 %.0280.lcssa to i1
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg   ; 5 uses
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = tail call i32 @proj_context_is_network_enabled(ptr noundef %.0307)
  %.not338 = icmp eq i32 %i.ch, 0
  %i.ci = select i1 %.not338, i32 1, i32 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cj = phi i32 [ %i.ci, %bb.s ], [ 3, %bb.r ]
  tail call void @proj_operation_factory_context_set_grid_availability_use(ptr noundef %.0307, ptr noundef nonnull %i.bo, i32 noundef %i.cj)
  %i.ck = tail call ptr @proj_create_operations(ptr noundef %.0307, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.bo) ; 8 uses
  tail call void @proj_operation_factory_context_destroy(ptr noundef nonnull %i.bo)
  %.not339 = icmp eq ptr %i.ck, null
  br i1 %.not339, label %.critedge.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call i32 @proj_list_get_count(ptr noundef nonnull %i.ck) ; 3 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @proj_list_destroy(ptr noundef nonnull %i.ck)
  tail call void (ptr, ptr, ...) @_Z22proj_context_log_debugP6pj_ctxPKcz(ptr noundef %.0307, ptr noundef nonnull @.str.20)
  br label %.critedge.thread

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.0307, i64 76 ; 6 uses
  store i8 %.0284.lcssa, ptr %i.cn, align 4, !tbaa !102
  %i.co = getelementptr inbounds nuw i8, ptr %.0307, i64 36 ; 7 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !103 ; 3 uses
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.co, align 4, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cq = tail call ptr @proj_list_get(ptr noundef nonnull %.0307, ptr noundef nonnull %i.ck, i32 noundef 0) ; 19 uses
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !103
  %i.cr = icmp ne ptr %i.cq, null                 ; 4 uses
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 844
  store i8 %.0276.lcssa, ptr %i.cs, align 4, !tbaa !104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 845
  store i8 %.0280.lcssa, ptr %i.ct, align 1, !tbaa !105
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 846
  store i8 %.0280.lcssa, ptr %i.cu, align 2, !tbaa !106
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %or.cond, label %bb.ab, label %.thread425

.thread425:                                       ; preds = %bb.aa
  %i.cv = icmp eq i32 %i.cl, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cw = tail call i32 @proj_context_is_network_enabled(ptr noundef nonnull %.0307)
  %.not340 = icmp eq i32 %i.cw, 0                 ; 2 uses
  %i.cx = icmp eq i32 %i.cl, 1                    ; 2 uses
  %or.cond9 = and i1 %i.cx, %i.cr
  %or.cond11 = select i1 %or.cond9, i1 %.not340, i1 false
  br i1 %or.cond11, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.thread425, %bb.ab
  %i.cy = phi i1 [ %i.cv, %.thread425 ], [ %i.cx, %bb.ab ]
  %i.cz = phi i1 [ false, %.thread425 ], [ %.not340, %bb.ab ] ; 2 uses
  %i.da = tail call i32 @proj_context_errno(ptr noundef nonnull %.0307) ; 0 uses
  br i1 %i.cr, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cy, label %.thread555, label %.thread441

bb.ae:                                            ; preds = %bb.ab
  %i.db = tail call i32 @proj_coordoperation_is_instantiable(ptr noundef nonnull %.0307, ptr noundef nonnull %i.cq) ; 3 uses
  %i.dc = tail call i32 @proj_context_errno(ptr noundef nonnull %.0307) ; 0 uses
  %i.dd = icmp eq i32 %i.db, 1
  %or.cond15 = select i1 %i.cf, i1 true, i1 %i.dd
  br i1 %or.cond15, label %bb.af, label %bb.am

.thread555:                                       ; preds = %bb.ad
  %.not557 = xor i1 %i.cz, true
  %or.cond13558 = or i1 %i.cf, %.not557
  br i1 %or.cond13558, label %bb.af, label %.thread441

bb.af:                                            ; preds = %.thread555, %bb.ae
  %.0260431 = phi i32 [ %i.db, %bb.ae ], [ -1, %.thread555 ] ; 2 uses
  tail call void @proj_list_destroy(ptr noundef nonnull %i.ck)
  store i8 0, ptr %i.cn, align 4, !tbaa !102
  %brmerge.demorgan = and i1 %or.cond, %i.cr
  br i1 %brmerge.demorgan, label %bb.ag, label %.thread437

bb.ag:                                            ; preds = %bb.af
  %i.de = icmp slt i32 %.0260431, 0
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.df = tail call i32 @proj_coordoperation_is_instantiable(ptr noundef nonnull %.0307, ptr noundef nonnull %i.cq)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1261 = phi i32 [ %i.df, %bb.ah ], [ %.0260431, %bb.ag ]
  %.not359 = icmp eq i32 %.1261, 0
  br i1 %.not359, label %bb.aj, label %.thread437

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Z26pj_warn_about_missing_gridP8PJconsts(ptr noundef nonnull %i.cq)
  br i1 %i.cf, label %bb.ak, label %.thread437

bb.ak:                                            ; preds = %bb.aj
  %i.dg = tail call ptr @proj_destroy(ptr noundef nonnull %i.cq) ; 0 uses
  br label %.critedge.thread

bb.al:                                            ; preds = %bb.ac
  tail call void @proj_list_destroy(ptr noundef nonnull %i.ck)
  store i8 0, ptr %i.cn, align 4, !tbaa !102
  br label %.critedge.thread

.thread437:                                       ; preds = %bb.af, %bb.aj, %bb.ai
  %i.dh = zext nneg i8 %.0284.lcssa to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 344
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !107
  br label %.critedge.thread

bb.am:                                            ; preds = %bb.ae
  %i.dj = icmp eq i32 %i.db, 0
  br i1 %i.dj, label %bb.an, label %.thread441

bb.an:                                            ; preds = %bb.am
  tail call void @_Z26pj_warn_about_missing_gridP8PJconsts(ptr noundef nonnull %i.cq)
  br label %.thread441

.thread441:                                       ; preds = %.thread555, %bb.ad, %bb.am, %bb.an
  %i.dk = phi i1 [ true, %bb.an ], [ true, %bb.am ], [ %i.cz, %bb.ad ], [ true, %.thread555 ]
  %.fr = freeze i1 %i.dk
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread441
  store i32 0, ptr %i.co, align 4, !tbaa !103
  br label %bb.ap

bb.ap:                                            ; preds = %.thread441, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_Z29pj_create_prepared_operationsP6pj_ctxPK8PJconstsS3_P11PJ_OBJ_LIST(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull %.0307, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.ck)
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !103
  store i8 0, ptr %i.cn, align 4, !tbaa !102
  invoke void @proj_list_destroy(ptr noundef nonnull %i.ck)
          to label %bb.aq unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.dl = load ptr, ptr %6, align 8, !tbaa !47    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !47 ; 3 uses
  %i.do = icmp eq ptr %i.dl, %i.dn
  br i1 %i.do, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %bb.aq
  %i.dp = zext nneg i8 %.0284.lcssa to i32        ; 4 uses
  br i1 %.fr, label %.preheader.split, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.sroa.0390.0496.us = phi ptr [ %i.dv, %.preheader.split.us ], [ %i.dl, %.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0390.0496.us, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !49 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 344
  store i32 %i.dp, ptr %i.ds, align 8, !tbaa !107
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 844
  store i8 %.0276.lcssa, ptr %i.dt, align 4, !tbaa !104
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 845
  store i8 %.0280.lcssa, ptr %i.du, align 1, !tbaa !105
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0390.0496.us, i64 192 ; 2 uses
  %.not446.us = icmp eq ptr %i.dv, %i.dn
  br i1 %.not446.us, label %.split.us.thread, label %.preheader.split.us

bb.ar:                                            ; preds = %bb.aq
  %i.dw = invoke ptr @proj_destroy(ptr noundef nonnull %i.cq)
          to label %bb.cf unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.split.us:                                        ; preds = %bb.aw
  %i.dx = trunc nuw i8 %.1 to i1
  br i1 %i.dx, label %.split.us.thread, label %bb.ax

.preheader.split:                                 ; preds = %.preheader, %bb.aw
  %.0497 = phi i8 [ %.1, %bb.aw ], [ 0, %.preheader ]
  %.sroa.0390.0496 = phi ptr [ %i.eh, %bb.aw ], [ %i.dl, %.preheader ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0390.0496, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !49 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 344
  store i32 %i.dp, ptr %i.ea, align 8, !tbaa !107
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 844
  store i8 %.0276.lcssa, ptr %i.eb, align 4, !tbaa !104
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 845
  store i8 %.0280.lcssa, ptr %i.ec, align 1, !tbaa !105
  %i.ed = trunc nuw i8 %.0497 to i1
  br i1 %i.ed, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %.preheader.split
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !50
  %i.ef = invoke i32 @proj_coordoperation_has_ballpark_transformation(ptr noundef %i.ee, ptr noundef nonnull %i.dz)
          to label %bb.at unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %.not353 = icmp eq i32 %i.ef, 0
  br i1 %.not353, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.eg = invoke noundef zeroext i1 @_ZNK16PJCoordOperation14isInstantiableEv(ptr noundef nonnull align 8 dereferenceable(188) %.sroa.0390.0496)
          to label %bb.av unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %spec.select361 = zext i1 %i.eg to i8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %.preheader.split
  %.1 = phi i8 [ 1, %.preheader.split ], [ 0, %bb.at ], [ %spec.select361, %bb.av ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0390.0496, i64 192 ; 2 uses
  %.not446.a = icmp eq ptr %i.eh, %i.dn
  br i1 %.not446.a, label %.split.us, label %.preheader.split

bb.ax:                                            ; preds = %.split.us
  %i.ei = invoke ptr @proj_create_operation_factory_context(ptr noundef %.0307, ptr noundef %.0296.lcssa)
          to label %bb.ay unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.ay:                                            ; preds = %bb.ax
  %.not342 = icmp eq ptr %i.ei, null
  br i1 %.not342, label %.split.us.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @proj_operation_factory_context_set_allow_ballpark_transformations(ptr noundef %.0307, ptr noundef nonnull %i.ei, i32 noundef %.0288.lcssa)
          to label %bb.ba unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  br i1 %i.bp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @proj_operation_factory_context_set_desired_accuracy(ptr noundef %.0307, ptr noundef nonnull %i.ei, double noundef %.0292.lcssa)
          to label %bb.bc unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.not337, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ej = load i8, ptr %3, align 8, !tbaa !97, !range !21, !noundef !22
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !98
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !99
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.es = load double, ptr %i.er, align 8, !tbaa !101
  invoke void @proj_operation_factory_context_set_area_of_interest(ptr noundef %.0307, ptr noundef nonnull %i.ei, double noundef %i.em, double noundef %i.eo, double noundef %i.eq, double noundef %i.es)
          to label %bb.bf unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !17
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !16
  invoke void @proj_operation_factory_context_set_area_of_interest_name(ptr noundef %.0307, ptr noundef nonnull %i.ei, ptr noundef %i.ex)
          to label %bb.bh unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.bd, %bb.bc
  invoke void @proj_operation_factory_context_set_spatial_criterion(ptr noundef %.0307, ptr noundef nonnull %i.ei, i32 noundef 1)
          to label %bb.bi unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  invoke void @proj_operation_factory_context_set_grid_availability_use(ptr noundef %.0307, ptr noundef nonnull %i.ei, i32 noundef 1)
          to label %bb.bj unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.ey = invoke ptr @proj_create_operations(ptr noundef %.0307, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.ei)
          to label %bb.bk unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bk:                                            ; preds = %bb.bj
  invoke void @proj_operation_factory_context_destroy(ptr noundef nonnull %i.ei)
          to label %bb.bl unwind label %.loopexit.split-lp450.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %.not343 = icmp eq ptr %i.ey, null
  br i1 %.not343, label %.split.us.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i8 %.0284.lcssa, ptr %i.cn, align 4, !tbaa !102
  store i32 0, ptr %i.co, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_Z29pj_create_prepared_operationsP6pj_ctxPK8PJconstsS3_P11PJ_OBJ_LIST(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull %.0307, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.ey)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !103
  store i8 0, ptr %i.cn, align 4, !tbaa !102
  invoke void @proj_list_destroy(ptr noundef nonnull %i.ey)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.ez = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !47 ; 2 uses
  %i.fc = icmp eq ptr %i.ez, %i.fb
  br i1 %i.fc, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.fd = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.fe = load ptr, ptr %i.dm, align 8, !tbaa !47 ; 2 uses
  %.not447498 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not447498, label %._crit_edge, label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.bp
end_hunk_0
