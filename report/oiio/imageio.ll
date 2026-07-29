inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN11OpenImageIO4v3_19attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i212
  %i.ch = phi i64 [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i212 ]
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.cb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc213 unwind label %bb.l

.noexc213:                                        ; preds = %bb.r
  %.pre.i.i = load ptr, ptr %19, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc213
  %i.cj = phi ptr [ %.pre.i.i, %.noexc213 ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i8 %i.ba, ptr %i.ck, align 1, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.sink = phi i64 [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit225 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit219 ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  %.2.i = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit225 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit219 ], [ %.033.i745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ]
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !22
  %i.cl = load ptr, ptr %19, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink
  store i8 0, ptr %i.cm, align 1, !tbaa !23
  %.3.i = add nuw i64 %.135.i744, 1               ; 3 uses
  %i.cn = icmp ult i64 %.3.i, %i.ai
  br i1 %i.cn, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.thread
  %.4.i = phi i64 [ %.3.i435, %.thread ], [ %.3.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.co = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.157, i64 noundef 0, i64 noundef 1) #39, !inline_history !72 ; 4 uses
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.aw, label %bb.t

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  store ptr %i.al, ptr %7, align 8, !tbaa !49
  %i.cq = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.cr = load ptr, ptr %19, align 8, !tbaa !19   ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cq) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !tbaa !50
  %i.cs = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cs, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.t
  %i.ct = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc208 unwind label %bb.ax, !inline_history !72 ; 2 uses

.noexc208:                                        ; preds = %.noexc10.i.i
  store ptr %i.ct, ptr %7, align 8, !tbaa !19
  %i.cu = load i64, ptr %i.f, align 8, !tbaa !50
  store i64 %i.cu, ptr %i.al, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc208, %bb.t
  %i.cv = phi ptr [ %i.ct, %.noexc208 ], [ %i.al, %bb.t ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.cw = load i8, ptr %i.cr, align 1, !tbaa !23
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cr, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit.i: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.cx = load i64, ptr %i.f, align 8, !tbaa !50  ; 2 uses
  store i64 %i.cx, ptr %i.am, align 8, !tbaa !22
  %i.cy = load ptr, ptr %7, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39
  %i.da = load i64, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %.not.i202746 = icmp eq i64 %i.da, 0
  br i1 %.not.i202746, label %.critedge2.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit.i
  %i.db = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !23
  %i.dd = icmp eq i8 %i.dc, 32
  br i1 %i.dd, label %.lr.ph852, label %.lr.ph749.preheader

.lr.ph749.preheader:                              ; preds = %.lr.ph, %.lr.ph.preheader
  %.ph = phi i64 [ %i.da, %.lr.ph.preheader ], [ %i.di, %.lr.ph ]
  br label %.lr.ph749

.lr.ph:                                           ; preds = %.lr.ph852
  %i.de = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !23
  %i.dg = icmp eq i8 %i.df, 32
  br i1 %i.dg, label %.lr.ph852, label %.lr.ph749.preheader

.lr.ph852:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.dh = phi ptr [ %i.de, %.lr.ph ], [ %i.db, %.lr.ph.preheader ]
  store i64 0, ptr %i.am, align 8, !tbaa !22
  store i8 0, ptr %i.dh, align 1, !tbaa !23
  %i.di = load i64, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %.not.i202 = icmp eq i64 %i.di, 0
  br i1 %.not.i202, label %.critedge2.i, label %.lr.ph

.lr.ph749:                                        ; preds = %.lr.ph749.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  %i.dj = phi i64 [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i ], [ %.ph, %.lr.ph749.preheader ]
  %i.dk = add i64 %i.dj, -1                       ; 2 uses
  %i.dl = load ptr, ptr %7, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !23
  %i.do = icmp eq i8 %i.dn, 32
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, label %.critedge2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i: ; preds = %.lr.ph749
  store i64 %i.dk, ptr %i.am, align 8, !tbaa !22
  store i8 0, ptr %i.dm, align 1, !tbaa !23
  %i.dp = load i64, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %.not32.i = icmp eq i64 %i.dp, 0
  br i1 %.not32.i, label %.critedge2.i, label %.lr.ph749

.critedge2.i:                                     ; preds = %.lr.ph852, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, %.lr.ph749, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.dq = add nuw i64 %i.co, 1                    ; 3 uses
  store ptr %i.an, ptr %8, align 8, !tbaa !49
  %i.dr = load i64, ptr %i.ak, align 8, !tbaa !22 ; 3 uses
  %.not = icmp ult i64 %i.co, %i.dr
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.critedge2.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.158, i64 noundef %i.dq, i64 noundef %i.dr) #42
          to label %.noexc42.i unwind label %.loopexit.split-lp, !inline_history !72

.noexc42.i:                                       ; preds = %.noexc.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge2.i
  %i.ds = load ptr, ptr %19, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq ; 2 uses
  %i.du = sub nuw i64 %i.dr, %i.dq                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  store i64 %i.du, ptr %i.e, align 8, !tbaa !50
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc10.i41.i, label %._crit_edge.i.i40.i

.noexc10.i41.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc43.i unwind label %.loopexit690, !inline_history !72 ; 2 uses

.noexc43.i:                                       ; preds = %.noexc10.i41.i
  store ptr %i.dw, ptr %8, align 8, !tbaa !19
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !50
  store i64 %i.dx, ptr %i.an, align 8, !tbaa !23
  br label %._crit_edge.i.i40.i

._crit_edge.i.i40.i:                              ; preds = %.noexc43.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dy = phi ptr [ %i.dw, %.noexc43.i ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.du, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i
  ]

bb.w:                                             ; preds = %._crit_edge.i.i40.i
  %i.dz = load i8, ptr %i.dt, align 1, !tbaa !23
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i

bb.x:                                             ; preds = %._crit_edge.i.i40.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %i.dt, i64 %i.du, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i: ; preds = %bb.x, %bb.w, %._crit_edge.i.i40.i
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  store i64 %i.ea, ptr %i.ao, align 8, !tbaa !22
  %i.eb = load ptr, ptr %8, align 8, !tbaa !19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea
  store i8 0, ptr %i.ec, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  %i.ed = load i64, ptr %i.am, align 8, !tbaa !22 ; 7 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %bb.y

.loopexit690:                                     ; preds = %.noexc10.i41.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i
  %i.ef = load i64, ptr %i.ao, align 8, !tbaa !22 ; 8 uses
  %.not33.i = icmp eq i64 %i.ef, 0
  br i1 %.not33.i, label %._crit_edge.i.i47.i.thread, label %bb.z

._crit_edge.i.i47.i.thread:                       ; preds = %bb.y
  %i.eg = load ptr, ptr %7, align 8, !tbaa !19
  store ptr %i.ar, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  store i64 0, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.eh = load ptr, ptr %8, align 8, !tbaa !19    ; 8 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !23
  %.fr = freeze i8 %i.ei                          ; 4 uses
  %i.ej = sext i8 %.fr to i32
  %i.ek = add nsw i32 %i.ej, -48
  %or.cond.i203 = icmp ult i32 %i.ek, 10
  br i1 %or.cond.i203, label %bb.aa, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.z
  switch i8 %.fr, label %bb.ag [
    i8 45, label %bb.aa
    i8 43, label %bb.aa
  ]

bb.aa:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.z
  %i.el = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.eh, i32 noundef 46) #43, !inline_history !72
  %.not34.i = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  br i1 %.not34.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = invoke noundef float @_ZN11OpenImageIO4v3_17Strutil4stofERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef null)
          to label %bb.ac unwind label %bb.ad, !inline_history !72

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store float %i.en, ptr %i.a, align 4, !tbaa !73
  store ptr %i.em, ptr %3, align 8, !tbaa !7
  store i64 %i.ed, ptr %i.as, align 8, !tbaa !12
  %i.eo = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull dead_on_return %3, i64 267, ptr noundef nonnull %i.a)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIfEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i unwind label %bb.ad, !inline_history !75

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIfEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

bb.ad:                                            ; preds = %bb.ac, %bb.af, %.noexc.i48.i, %bb.ae, %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.ae:                                            ; preds = %bb.aa
  store ptr %i.eh, ptr %9, align 8, !tbaa !7
  store i64 %i.ef, ptr %i.at, align 8, !tbaa !12
  %i.eq = invoke noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef nonnull dead_on_return %9, ptr noundef null, i32 noundef 10)
          to label %bb.af unwind label %bb.ad, !inline_history !72

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !3
  store ptr %i.em, ptr %4, align 8, !tbaa !7
  store i64 %i.ed, ptr %i.au, align 8, !tbaa !12
  %i.er = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull dead_on_return %4, i64 263, ptr noundef nonnull %i.b)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIiEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i unwind label %bb.ad, !inline_history !76

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIiEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

bb.ag:                                            ; preds = %switch.early.test.i
  %.not688 = icmp eq i64 %i.ef, 1
  br i1 %.not688, label %._crit_edge.i.i47.i.thread820, label %bb.ah

._crit_edge.i.i47.i.thread820:                    ; preds = %bb.ag
  %i.es = load ptr, ptr %7, align 8, !tbaa !19
  store ptr %i.ar, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  store i64 1, ptr %i.d, align 8, !tbaa !50
  br label %bb.at

bb.ah:                                            ; preds = %bb.ag
  switch i8 %.fr, label %bb.as [
    i8 34, label %bb.ai
    i8 39, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.et = getelementptr i8, ptr %i.eh, i64 %i.ef
  %i.eu = getelementptr i8, ptr %i.et, i64 -1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !23
  %i.ew = icmp eq i8 %i.ev, %.fr
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.ex = add i64 %i.ef, -2
  store ptr %i.ap, ptr %10, align 8, !tbaa !49
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %30 = add i64 %i.ef, -1
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ex, i64 %30) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i64 %spec.select.i.i, ptr %i.c, align 8, !tbaa !50
  %i.ez = icmp ugt i64 %spec.select.i.i, 15
  br i1 %i.ez, label %.noexc10.i, label %._crit_edge.i.i227

.noexc10.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc230 unwind label %bb.ar ; 2 uses

.noexc230:                                        ; preds = %.noexc10.i
  store ptr %i.fa, ptr %10, align 8, !tbaa !19
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !50
  store i64 %i.fb, ptr %i.ap, align 8, !tbaa !23
  br label %._crit_edge.i.i227

._crit_edge.i.i227:                               ; preds = %.noexc230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.fc = phi ptr [ %i.fa, %.noexc230 ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i ] ; 2 uses
  switch i64 %spec.select.i.i, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i227
  %i.fd = load i8, ptr %i.ey, align 1, !tbaa !23
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !23
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i227
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr nonnull align 1 %i.ey, i64 %spec.select.i.i, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i227
  %i.fe = load i64, ptr %i.c, align 8, !tbaa !50  ; 2 uses
  store i64 %i.fe, ptr %i.aq, align 8, !tbaa !22
  %i.ff = load ptr, ptr %10, align 8, !tbaa !19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %i.fh = load ptr, ptr %8, align 8, !tbaa !19    ; 6 uses
  %i.fi = icmp eq ptr %i.fh, %i.an
  %i.fj = load ptr, ptr %10, align 8, !tbaa !19   ; 5 uses
  %i.fk = icmp eq ptr %i.fj, %i.ap                ; 2 uses
  br i1 %i.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.al
  br i1 %i.fk, label %bb.am, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.al
  br i1 %i.fk, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fl = load i64, ptr %i.aq, align 8, !tbaa !22 ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fm)
  switch i64 %i.fl, label %bb.ao [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !23
  store i8 %i.fn, ptr %i.fh, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fj, i64 %i.fl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.fo = load i64, ptr %i.aq, align 8, !tbaa !22 ; 2 uses
  store i64 %i.fo, ptr %i.ao, align 8, !tbaa !22
  %i.fp = load ptr, ptr %8, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  store i8 0, ptr %i.fq, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fj, ptr %8, align 8, !tbaa !19
  %i.fr = load <2 x i64>, ptr %i.aq, align 8, !tbaa !23
  store <2 x i64> %i.fr, ptr %i.ao, align 8, !tbaa !23
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fs = load i64, ptr %i.an, align 8, !tbaa !23
  store ptr %i.fj, ptr %8, align 8, !tbaa !19
  %i.ft = load <2 x i64>, ptr %i.aq, align 8, !tbaa !23
  store <2 x i64> %i.ft, ptr %i.ao, align 8, !tbaa !23
  %.not.i226 = icmp eq ptr %i.fh, null
  br i1 %.not.i226, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fh, ptr %10, align 8, !tbaa !19
  store i64 %i.fs, ptr %i.ap, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ap, ptr %10, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ap, %bb.aq
  %i.fu = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fh, %bb.ap ], [ %i.ap, %bb.aq ]
  store i64 0, ptr %i.aq, align 8, !tbaa !22
  store i8 0, ptr %i.fu, align 1, !tbaa !23
  %i.fv = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ap
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fx = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #40, !inline_history !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %.pr.pre = load i64, ptr %i.ao, align 8, !tbaa !22
  %.pre = load i64, ptr %i.am, align 8, !tbaa !22
  %.pre768 = load ptr, ptr %8, align 8, !tbaa !19
  br label %bb.as

bb.ar:                                            ; preds = %.noexc10.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.as:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ai
  %i.ga = phi ptr [ %i.eh, %bb.ah ], [ %.pre768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.eh, %bb.ai ] ; 2 uses
  %i.gb = phi i64 [ %i.ed, %bb.ah ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ed, %bb.ai ] ; 3 uses
  %.pr = phi i64 [ %i.ef, %bb.ah ], [ %.pr.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ef, %bb.ai ] ; 4 uses
  %i.gc = load ptr, ptr %7, align 8, !tbaa !19    ; 3 uses
  store ptr %i.ar, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  store i64 %.pr, ptr %i.d, align 8, !tbaa !50
  %i.gd = icmp ugt i64 %.pr, 15
  br i1 %i.gd, label %.noexc.i48.i, label %._crit_edge.i.i47.i

.noexc.i48.i:                                     ; preds = %bb.as
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc49.i unwind label %bb.ad, !inline_history !72 ; 2 uses

.noexc49.i:                                       ; preds = %.noexc.i48.i
  store ptr %i.ge, ptr %11, align 8, !tbaa !19
  %i.gf = load i64, ptr %i.d, align 8, !tbaa !50
  store i64 %i.gf, ptr %i.ar, align 8, !tbaa !23
  br label %._crit_edge.i.i47.i

._crit_edge.i.i47.i:                              ; preds = %.noexc49.i, %bb.as
  %i.gg = phi ptr [ %i.ge, %.noexc49.i ], [ %i.ar, %bb.as ] ; 2 uses
  switch i64 %.pr, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.at:                                            ; preds = %._crit_edge.i.i47.i.thread820, %._crit_edge.i.i47.i
  %i.gh = phi ptr [ %i.ar, %._crit_edge.i.i47.i.thread820 ], [ %i.gg, %._crit_edge.i.i47.i ]
  %i.gi = phi ptr [ %i.eh, %._crit_edge.i.i47.i.thread820 ], [ %i.ga, %._crit_edge.i.i47.i ]
  %i.gj = phi i64 [ %i.ed, %._crit_edge.i.i47.i.thread820 ], [ %i.gb, %._crit_edge.i.i47.i ]
  %i.gk = phi ptr [ %i.es, %._crit_edge.i.i47.i.thread820 ], [ %i.gc, %._crit_edge.i.i47.i ]
  %i.gl = load i8, ptr %i.gi, align 1, !tbaa !23
  store i8 %i.gl, ptr %i.gh, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.au:                                            ; preds = %._crit_edge.i.i47.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.ga, i64 %.pr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %._crit_edge.i.i47.i.thread, %bb.au, %bb.at, %._crit_edge.i.i47.i
  %i.gm = phi ptr [ %i.eg, %._crit_edge.i.i47.i.thread ], [ %i.gc, %bb.au ], [ %i.gk, %bb.at ], [ %i.gc, %._crit_edge.i.i47.i ]
  %i.gn = phi i64 [ %i.ed, %._crit_edge.i.i47.i.thread ], [ %i.gb, %bb.au ], [ %i.gj, %bb.at ], [ %i.gb, %._crit_edge.i.i47.i ]
  %i.go = load i64, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  store i64 %i.go, ptr %i.av, align 8, !tbaa !22
  %i.gp = load ptr, ptr %11, align 8, !tbaa !19
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store i8 0, ptr %i.gq, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.gm, ptr %5, align 8, !tbaa !7
  store i64 %i.gn, ptr %i.aw, align 8, !tbaa !12
  %i.gr = load ptr, ptr %11, align 8, !tbaa !19
  store ptr %i.gr, ptr %6, align 8, !tbaa !7
  %i.gs = load i64, ptr %i.av, align 8, !tbaa !22
  store i64 %i.gs, ptr %i.ax, align 8, !tbaa !12
  %i.gt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS0_17basic_string_viewIcS7_EET_.exit.i unwind label %bb.av, !inline_history !77 ; 2 uses

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS0_17basic_string_viewIcS7_EET_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.gu = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ar
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS0_17basic_string_viewIcS7_EET_.exit.i
  %i.gw = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #40, !inline_history !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ar
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %bb.av
  %i.hb = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #40, !inline_history !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.ar, %bb.ad
  %.pn.i204 = phi { ptr, i32 } [ %i.ep, %bb.ad ], [ %i.fz, %bb.ar ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %i.gy, %bb.av ] ; 2 uses
  %i.hd = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.an
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i
  %i.hf = load i64, ptr %i.an, align 8, !tbaa !23
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #40, !inline_history !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS0_17basic_string_viewIcS7_EET_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIiEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIfEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i
  %.1.i205 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit44.i ], [ %i.er, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIiEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i ], [ %i.eo, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeIfEEbNS0_17basic_string_viewIcSt11char_traitsIcEEET_.exit.i ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ %i.gt, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GlobalOptSetter9attributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS0_17basic_string_viewIcS7_EET_.exit.i ]
  %i.hh = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
end_hunk_0
